// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$FavoriteService extends FavoriteService {
  _$FavoriteService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = FavoriteService;

  @override
  Future<Response<List<Tweet>>> list(
      {String tweetMode = "extended",
      bool includeCards = true,
      String cardsPlatform = "TwitterKit-13",
      int userId,
      String screenName,
      int count,
      String sinceId,
      String maxId,
      bool includeEntities}) {
    final $url = '/favorites/list.json';
    final $params = <String, dynamic>{
      'tweet_mode': tweetMode,
      'include_cards': includeCards,
      'cards_platform': cardsPlatform,
      'user_id': userId,
      'screen_name': screenName,
      'count': count,
      'since_id': sinceId,
      'max_id': maxId,
      'include_entities': includeEntities
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Tweet>, Tweet>($request);
  }

  @override
  Future<Response<Tweet>> destroy(FavoriteDestroyBody destroyBody) {
    final $url = '/favorites/destroy.json';
    final $headers = {'content-type': 'application/x-www-form-urlencoded'};
    final $body = destroyBody;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<Tweet, Tweet>($request, requestConverter: convertForm);
  }

  @override
  Future<Response<Tweet>> create(FavoriteCreateBody createBody) {
    final $url = '/favorites/create.json';
    final $headers = {'content-type': 'application/x-www-form-urlencoded'};
    final $body = createBody;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<Tweet, Tweet>($request, requestConverter: convertForm);
  }
}
