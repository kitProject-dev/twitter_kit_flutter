import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter/services.dart';
import 'package:oauth1/oauth1.dart' as oauth1;
import 'package:oauth1/oauth1.dart';
import 'package:twitter_kit/src/exception/twitter_auth_exception.dart';
import 'package:twitter_kit/src/model/authorize_result.dart';
import 'package:twitter_kit/src/model/tweet.dart';
import 'package:twitter_kit/src/services/configuration_service.dart';
import 'package:twitter_kit/src/services/statuses_service.dart';
import 'package:twitter_kit/twitter_kit.dart';

class Twitter {
  factory Twitter(String consumerKey, String consumerSecret,
      {bool logging = false}) {
    return Twitter._(consumerKey, consumerSecret, logging);
  }

  Twitter._(this._consumerKey, this._consumerSecret, this._logging);

  static const MethodChannel channel =
      const MethodChannel('info.kitproject.twitter_kit');
  static const _ARG_KEY_CONSUMER_KEY = "consumerKey";
  static const _ARG_KEY_CONSUMER_SECRET = "consumerSecret";
  static const _METHOD_GET_CURRENT_SESSION = "getCurrentSession";
  static const _METHOD_AUTHORIZE = "authorize";
  static const _METHOD_LOGOUT = "logout";
  final String _consumerKey;
  final String _consumerSecret;
  final bool _logging;
  ChopperClient _client;

  Future<bool> initialize() async {
    final session = await _currentSession;
    if (session != null) {
      createClient(session);
      return true;
    } else {
      return false;
    }
  }

  Future<Session> get currentSession async => await _currentSession;

  Future<bool> get isSessionActive async => await _currentSession != null;

  Future<Session> login() async {
    final session = await _currentSession;
    if (session == null) {
      final result = await _authorize();
      if (result.status == AuthorizeResult.RESULT_STATUS_LOGGED_IN) {
        createClient(result.session);
        return result.session;
      }
      throw TwitterAuthException(result.errorMessage);
    } else {
      if (_client == null) {
        createClient(session);
      }
      return session;
    }
  }

  Future<void> logout() async {
    await _logout();
    _client = null;
  }

  void createClient(session) {
    _client = ChopperClient(
      baseUrl: "https://api.twitter.com/1.1",
      converter: JsonToTypeConverter({
        Tweet: (jsonData) => Tweet.fromJson(jsonData),
        TwitterCollection: (jsonData) => TwitterCollection.fromJson(jsonData),
        Configuration: (jsonData) => Configuration.fromJson(jsonData),
        User: (jsonData) => User.fromJson(jsonData)
      }),
      services: [
        AccountService.createService(),
        CollectionService.createService(),
        ConfigurationService.createService(),
        FavoriteService.createService(),
        ListService.createService(),
        StatusesService.createService()
      ],
      client: _getClient(
          _consumerKey, _consumerSecret, session.token, session.secret),
      interceptors: [
        (Request request) async {
          if (_logging) {
            print("""
                =========HTTP Request logging=========
                baseUrl: ${request.baseUrl}
                url: ${request.url}
                parameter: ${request.parameters}
                method: ${request.method}
                headers: ${request.headers}
                body: ${request.body}
                multipart: ${request.multipart}
                parts: ${request.parts}
                ======================================
              """);
          }
          return request;
        },
        (Response response) async {
          if (_logging) {
            print("""
                =========HTTP Response logging=========
                url: ${response.base.request.url}
                status: ${response.statusCode}
                headers: ${response.headers}
                body: ${response.body}
                ======================================
              """);
          }
          return response;
        },
      ],
    );
  }

  ChopperClient get client => _client;

  AccountService get accountService => _client.getService<AccountService>();

  CollectionService get collectionService =>
      _client.getService<CollectionService>();

  ConfigurationService get configurationService =>
      _client.getService<ConfigurationService>();

  FavoriteService get favoriteService => _client.getService<FavoriteService>();

  ListService get listService => _client.getService<ListService>();

  StatusesService get statusesService => _client.getService<StatusesService>();

  static oauth1.Client _getClient(String consumerKey, String consumerSecret,
      String accessToken, String accessSecret) {
    return oauth1.Client(
        oauth1.Platform(
                'https://api.twitter.com/oauth/request_token',
                'https://api.twitter.com/oauth/authorize',
                'https://api.twitter.com/oauth/access_token',
                oauth1.SignatureMethods.hmacSha1)
            .signatureMethod,
        oauth1.ClientCredentials(consumerKey, consumerSecret),
        Credentials(accessToken, accessSecret));
  }

  Future<Session> get _currentSession async {
    final Map<dynamic, dynamic> session = await channel.invokeMethod(
        _METHOD_GET_CURRENT_SESSION, {
      _ARG_KEY_CONSUMER_KEY: _consumerKey,
      _ARG_KEY_CONSUMER_SECRET: _consumerSecret
    });
    if (session == null) {
      return null;
    }
    return Session.fromJson(session);
  }

  Future<AuthorizeResult> _authorize() async {
    final Map<dynamic, dynamic> result = await channel.invokeMethod(
        _METHOD_AUTHORIZE, {
      _ARG_KEY_CONSUMER_KEY: _consumerKey,
      _ARG_KEY_CONSUMER_SECRET: _consumerSecret
    });
    return AuthorizeResult.fromJson(result);
  }

  Future<void> _logout() async => await channel.invokeMethod(_METHOD_LOGOUT, {
        _ARG_KEY_CONSUMER_KEY: _consumerKey,
        _ARG_KEY_CONSUMER_SECRET: _consumerSecret
      });
}

class JsonToTypeConverter extends JsonConverter {
  final Map<Type, Function> typeToJsonFactoryMap;

  JsonToTypeConverter(this.typeToJsonFactoryMap);

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    return response.copyWith(
      body: fromJsonData<BodyType, InnerType>(
          response.body, typeToJsonFactoryMap[InnerType]),
    );
  }

  T fromJsonData<T, InnerType>(String jsonData, Function jsonParser) {
    var jsonMap = jsonDecode(jsonData);

    if (jsonMap is List) {
      return jsonMap
          .map((item) => jsonParser(item as Map<String, dynamic>) as InnerType)
          .toList() as T;
    }

    return jsonParser(jsonMap);
  }
}
