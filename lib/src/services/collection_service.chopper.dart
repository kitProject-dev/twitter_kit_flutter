// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$CollectionService extends CollectionService {
  _$CollectionService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CollectionService;

  @override
  Future<Response<TwitterCollection>> collection(String id,
      {String tweetMode = "extended",
      bool includeCards = true,
      String cardsPlatform = "TwitterKit-13",
      int count,
      int maxPosition,
      int minPosition}) {
    final $url = '/collections/entries.json';
    final $params = <String, dynamic>{
      'id': id,
      'tweet_mode': tweetMode,
      'include_cards': includeCards,
      'cards_platform': cardsPlatform,
      'count': count,
      'max_position': maxPosition,
      'min_position': minPosition
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<TwitterCollection, TwitterCollection>($request);
  }
}
