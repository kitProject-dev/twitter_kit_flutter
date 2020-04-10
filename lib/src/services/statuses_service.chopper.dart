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
      {String tweetMode = "extended",
      bool includeCards = true,
      String cardsPlatform = "TwitterKit-13",
      bool trimUser,
      bool includeMyRetweet,
      bool includeEntities}) {
    final $url = '/statuses/show.json';
    final $params = <String, dynamic>{
      'id': id,
      'tweet_mode': tweetMode,
      'include_cards': includeCards,
      'cards_platform': cardsPlatform,
      'trim_user': trimUser,
      'include_my_retweet': includeMyRetweet,
      'include_entities': includeEntities
    };
    final $headers = {'content-type': 'application/x-www-form-urlencoded'};
    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<Tweet, Tweet>($request, requestConverter: convertForm);
  }

  @override
  Future<Response<Tweet>> update(StatusesUpdateBody updateBody,
      {String tweetMode = "extended",
      bool includeCards = true,
      String cardsPlatform = "TwitterKit-13"}) {
    final $url = '/statuses/update.json';
    final $params = <String, dynamic>{
      'tweet_mode': tweetMode,
      'include_cards': includeCards,
      'cards_platform': cardsPlatform
    };
    final $headers = {'content-type': 'application/x-www-form-urlencoded'};
    final $body = updateBody;
    final $request = Request('POST', $url, client.baseUrl,
        body: $body, parameters: $params, headers: $headers);
    return client.send<Tweet, Tweet>($request, requestConverter: convertForm);
  }
}
