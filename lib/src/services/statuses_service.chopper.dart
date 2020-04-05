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
  Future<Response<Tweet>> show(StatusesShowBody showBody) {
    final $url =
        '/statuses/show.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13&id={id}&include_my_retweet={include_my_retweet}&include_entities={include_entities}';
    final $headers = {'content-type': 'application/x-www-form-urlencoded'};
    final $body = showBody;
    final $request =
        Request('GET', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<Tweet, Tweet>($request, requestConverter: convertForm);
  }

  @override
  Future<Response<Tweet>> update(StatusesUpdateBody updateBody) {
    final $url =
        '/statuses/update.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13';
    final $headers = {'content-type': 'application/x-www-form-urlencoded'};
    final $body = updateBody;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<Tweet, Tweet>($request, requestConverter: convertForm);
  }
}
