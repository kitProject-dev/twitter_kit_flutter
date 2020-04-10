// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ListService extends ListService {
  _$ListService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ListService;

  @override
  Future<Response<List<Tweet>>> statuses(int listId,
      {String slug,
      String tweetMode = "extended",
      bool includeCards = true,
      String cardsPlatform = "TwitterKit-13",
      String ownerScreenName,
      int ownerId,
      int sinceId,
      int maxId,
      int count,
      bool includeEntities,
      bool includeRetweets}) {
    final $url = '/lists/statuses.json';
    final $params = <String, dynamic>{
      'list_id': listId,
      'slug': slug,
      'tweet_mode': tweetMode,
      'include_cards': includeCards,
      'cards_platform': cardsPlatform,
      'owner_screen_name': ownerScreenName,
      'owner_id': ownerId,
      'since_id': sinceId,
      'max_id': maxId,
      'count': count,
      'include_entities': includeEntities,
      'include_rts': includeRetweets
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Tweet>, Tweet>($request);
  }
}
