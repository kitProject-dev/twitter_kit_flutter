import Flutter
import UIKit
import TwitterKit

public class SwiftTwitterKitPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "info.kitproject.twitter_kit", binaryMessenger: registrar.messenger())
        let instance = SwiftTwitterKitPlugin()
        registrar.addApplicationDelegate(instance)
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        initializeTwitterInstance(call: call)
        if "getCurrentSession" == call.method {
            getCurrentSession(result: result)
        } else if "authorize" == call.method {
            authorize(result: result)
        } else if "logout" == call.method {
            logout(result: result)
        } else {
            result(FlutterMethodNotImplemented)
        }
    }
    
    private func initializeTwitterInstance(call: FlutterMethodCall) {
        let arguments = call.arguments as? [String:String]
        let consumerKey = arguments?["consumerKey"]
        let consumerSecret = arguments?["consumerSecret"]
        if consumerKey != nil && consumerSecret != nil {
            Twitter.sharedInstance().start(withConsumerKey: consumerKey!, consumerSecret: consumerSecret!)
        }
    }
    
    private func getCurrentSession(result: FlutterResult) {
        let session = Twitter.sharedInstance().sessionStore.session()
        result(sessionDataToMap(session: session))
    }
    
    private func authorize(result: @escaping FlutterResult) {
        Twitter.sharedInstance().logIn { (session, error) in
            if error == nil {
                result(["status": "loggedIn", "session": self.sessionDataToMap(session: session)!])
            } else {
                result(["status": "error", "errorMessage": error?.localizedDescription])
            }
        }
    }
    
    private func logout(result: FlutterResult) {
        let signedInUserId = TWTRAPIClient.withCurrentUser().userID
        if signedInUserId != nil {
            Twitter.sharedInstance().sessionStore.logOutUserID(signedInUserId!)
        }
        result(nil)
    }
    
    private func sessionDataToMap(session: TWTRAuthSession?) -> [String:String]? {
        if session == nil {
            return nil
        }
        return ["secret": session!.authTokenSecret, "token": session!.authToken, "userId": session!.userID, "username": ""]
    }
}
