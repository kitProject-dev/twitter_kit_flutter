import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:oauth1/oauth1.dart' as oauth1;
import 'package:oauth1/oauth1.dart';
import 'package:twitter_kit/src/model/tweet.dart';
import 'package:twitter_kit/src/services/statuses_service.dart';

class Twitter {
  factory Twitter(consumerKey, consumerSecret, accessToken, accessSecret) {
    final client = ChopperClient(
      baseUrl: "https://api.twitter.com/1.1",
      converter:
          JsonToTypeConverter({Tweet: (jsonData) => Tweet.fromJson(jsonData)}),
      services: [StatusesService.create()],
      client:
          _getClient(consumerKey, consumerSecret, accessToken, accessSecret),
    );
    return Twitter._(client);
  }

  Twitter._(this._client);

  final ChopperClient _client;

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
