import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter_twitter_login/flutter_twitter_login.dart';
import 'package:oauth1/oauth1.dart' as oauth1;
import 'package:oauth1/oauth1.dart';
import 'package:twitter_kit/src/model/tweet.dart';
import 'package:twitter_kit/src/services/statuses_service.dart';
import 'package:twitter_kit/twitter_kit.dart';

class Twitter {
  factory Twitter(String consumerKey, String consumerSecret) {
    final twitterLogin = TwitterLogin(
      consumerKey: consumerKey,
      consumerSecret: consumerSecret,
    );
    return Twitter._(twitterLogin, consumerKey, consumerSecret);
  }

  Twitter._(this._twitterLogin, this._consumerKey, this._consumerSecret);

  final TwitterLogin _twitterLogin;
  final String _consumerKey;
  final String _consumerSecret;
  ChopperClient _client;

  Future<bool> initialize() async {
    final session = await _twitterLogin.currentSession;
    if (session != null) {
      createClient(session.token, session.secret);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> login() async {
    final session = await _twitterLogin.currentSession;
    if (session == null) {
      final TwitterLoginResult result = await _twitterLogin.authorize();
      if (result.status == TwitterLoginStatus.loggedIn) {
        createClient(result.session.token, result.session.secret);
        return true;
      }
      return false;
    } else {
      if (_client == null) {
        createClient(session.token, session.secret);
      }
      return true;
    }
  }

  Future<bool> isSessionActive() async {
    return await _twitterLogin.isSessionActive;
  }

  Future<void> logOut() async {
    await _twitterLogin.logOut();
    _client = null;
  }

  void createClient(String token, String secret) {
    _client = ChopperClient(
      baseUrl: "https://api.twitter.com/1.1",
      converter:
          JsonToTypeConverter({Tweet: (jsonData) => Tweet.fromJson(jsonData)}),
      services: [StatusesService.create()],
      client: _getClient(_consumerKey, _consumerSecret, token, secret),
    );
  }

  ChopperClient get client => _client;

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
