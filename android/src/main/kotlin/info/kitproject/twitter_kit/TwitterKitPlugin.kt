package info.kitproject.twitter_kit

import android.content.Intent
import android.webkit.CookieManager
import android.webkit.CookieSyncManager
import com.twitter.sdk.android.core.*
import com.twitter.sdk.android.core.identity.TwitterAuthClient
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.PluginRegistry.ActivityResultListener
import io.flutter.plugin.common.PluginRegistry.Registrar

class TwitterKitPlugin private constructor(private val registrar: Registrar)
    : Callback<TwitterSession?>(), MethodCallHandler, ActivityResultListener {
    private var authClientInstance: TwitterAuthClient? = null
    private var pendingResult: MethodChannel.Result? = null
    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            METHOD_GET_CURRENT_SESSION -> getCurrentSession(result, call)
            METHOD_AUTHORIZE -> authorize(result, call)
            METHOD_LOGOUT -> logout(result, call)
            else -> result.notImplemented()
        }
    }

    private fun getCurrentSession(result: MethodChannel.Result, call: MethodCall) {
        initializeAuthClient(call)
        val session = TwitterCore.getInstance().sessionManager.activeSession
        val sessionMap = sessionToMap(session)
        result.success(sessionMap)
    }

    private fun authorize(result: MethodChannel.Result, call: MethodCall) {
        if (pendingResult != null) {
            result.error(
                    "TWITTER_LOGIN_IN_PROGRESS",
                    "authorize called while another Twitter " +
                            "login operation was in progress.",
                    null
            )
        }
        pendingResult = result
        initializeAuthClient(call)!!.authorize(registrar.activity(), this)
    }

    private fun initializeAuthClient(call: MethodCall): TwitterAuthClient? {
        if (authClientInstance == null) {
            val consumerKey = call.argument<String>(ARG_KEY_CONSUMER_KEY)
            val consumerSecret = call.argument<String>(ARG_KEY_CONSUMER_SECRET)
            authClientInstance = configureClient(consumerKey, consumerSecret)
        }
        return authClientInstance
    }

    private fun configureClient(consumerKey: String?, consumerSecret: String?): TwitterAuthClient {
        val authConfig = TwitterAuthConfig(consumerKey, consumerSecret)
        val config = TwitterConfig.Builder(registrar.context())
                .twitterAuthConfig(authConfig)
                .build()
        Twitter.initialize(config)
        return TwitterAuthClient()
    }

    private fun logout(result: MethodChannel.Result, call: MethodCall) {
        CookieSyncManager.createInstance(registrar.context())
        val cookieManager = CookieManager.getInstance()
        cookieManager.removeSessionCookie()
        initializeAuthClient(call)
        TwitterCore.getInstance().sessionManager.clearActiveSession()
        result.success(null)
    }

    private fun sessionToMap(session: TwitterSession?): HashMap<String, Any>? {
        return if (session == null) {
            null
        } else object : HashMap<String, Any>() {
            init {
                put(SESSION_KEY_SECRET, session.authToken.secret)
                put(SESSION_KEY_TOKEN, session.authToken.token)
                put(SESSION_KEY_USER_ID, session.userId.toString())
                put(SESSION_KEY_USER_NAME, session.userName)
            }
        }
    }

    override fun success(result: Result<TwitterSession?>) {
        if (pendingResult != null) {
            val sessionMap = sessionToMap(result.data)
            val resultMap: HashMap<String, Any?> = object : HashMap<String, Any?>() {
                init {
                    put(RESULT_KEY_STATUS, RESULT_VALUE_LOGGED_IN)
                    put(RESULT_KEY_SESSION, sessionMap)
                }
            }
            pendingResult!!.success(resultMap)
            pendingResult = null
        }
    }

    override fun failure(exception: TwitterException) {
        if (pendingResult != null) {
            val resultMap: HashMap<String, Any> = object : HashMap<String, Any>() {
                init {
                    put(RESULT_KEY_STATUS, RESULT_VALUE_ERROR)
                    put(RESULT_KEY_MESSAGE, exception.message ?: "")
                }
            }
            pendingResult!!.success(resultMap)
            pendingResult = null
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent): Boolean {
        if (authClientInstance != null) {
            authClientInstance!!.onActivityResult(requestCode, resultCode, data)
        }
        return false
    }

    companion object {
        private const val CHANNEL_NAME = "info.kitproject.twitter_kit"
        private const val METHOD_GET_CURRENT_SESSION = "getCurrentSession"
        private const val METHOD_AUTHORIZE = "authorize"
        private const val METHOD_LOGOUT = "logout"

        private const val ARG_KEY_CONSUMER_KEY = "consumerKey"
        private const val ARG_KEY_CONSUMER_SECRET = "consumerSecret"

        private const val SESSION_KEY_SECRET = "secret"
        private const val SESSION_KEY_TOKEN = "token"
        private const val SESSION_KEY_USER_ID = "userId"
        private const val SESSION_KEY_USER_NAME = "username"

        private const val RESULT_KEY_STATUS = "status"
        private const val RESULT_KEY_SESSION = "session"
        private const val RESULT_KEY_MESSAGE = "message"
        private const val RESULT_VALUE_LOGGED_IN = "loggedIn"
        private const val RESULT_VALUE_ERROR = "error"

        @JvmStatic
        fun registerWith(registrar: Registrar) {
            val plugin = TwitterKitPlugin(registrar)
            val channel = MethodChannel(registrar.messenger(), CHANNEL_NAME)
            channel.setMethodCallHandler(plugin)
        }
    }

    init {
        registrar.addActivityResultListener(this)
    }
}