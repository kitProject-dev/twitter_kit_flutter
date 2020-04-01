// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statuses_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$StatusesService extends StatusesService {
  _$StatusesService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = StatusesService;

  @override
  Future<Response<Tweet>> show(int id,
      {bool trimUser = true,
      bool includeMyRetweet = true,
      bool includeEntities = true,
      String tweetMode = "extended"}) {
    final $url = '/statuses/show.json';
    final $params = <String, dynamic>{
      'id': id,
      'trimUser': trimUser,
      'include_my_retweet': includeMyRetweet,
      'include_entities': includeEntities,
      'tweet_mode': tweetMode
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Tweet, Tweet>($request);
  }
}
