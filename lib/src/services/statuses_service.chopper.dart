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
  Future<Response<List<Tweet>>> mentionsTimeline(
      {String tweetMode = "extended",
      bool includeCards = true,
      String cardsPlatform = "TwitterKit-13",
      int count,
      int sinceId,
      int maxId,
      bool trimUser,
      bool contributeDetails,
      bool includeEntities}) {
    final $url = '/statuses/mentions_timeline.json';
    final $params = <String, dynamic>{
      'tweet_mode': tweetMode,
      'include_cards': includeCards,
      'cards_platform': cardsPlatform,
      'count': count,
      'since_id': sinceId,
      'max_id': maxId,
      'trim_user': trimUser,
      'contributor_details': contributeDetails,
      'include_entities': includeEntities
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Tweet>, Tweet>($request);
  }

  @override
  Future<Response<List<Tweet>>> userTimeline(
      {String tweetMode = "extended",
      bool includeCards = true,
      String cardsPlatform = "TwitterKit-13",
      int userId,
      String screenName,
      int count,
      int sinceId,
      int maxId,
      bool trimUser,
      bool excludeReplies,
      bool contributeDetails,
      bool includeRetweets}) {
    final $url = '/statuses/user_timeline.json';
    final $params = <String, dynamic>{
      'tweet_mode': tweetMode,
      'include_cards': includeCards,
      'cards_platform': cardsPlatform,
      'user_id': userId,
      'screen_name': screenName,
      'count': count,
      'since_id': sinceId,
      'max_id': maxId,
      'trim_user': trimUser,
      'exclude_replies': excludeReplies,
      'contributor_details': contributeDetails,
      'include_rts': includeRetweets
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Tweet>, Tweet>($request);
  }

  @override
  Future<Response<List<Tweet>>> homeTimeline(
      {String tweetMode = "extended",
      bool includeCards = true,
      String cardsPlatform = "TwitterKit-13",
      int count,
      int sinceId,
      int maxId,
      bool trimUser,
      bool excludeReplies,
      bool contributeDetails,
      bool includeEntities}) {
    final $url = '/statuses/home_timeline.json';
    final $params = <String, dynamic>{
      'tweet_mode': tweetMode,
      'include_cards': includeCards,
      'cards_platform': cardsPlatform,
      'count': count,
      'since_id': sinceId,
      'max_id': maxId,
      'trim_user': trimUser,
      'exclude_replies': excludeReplies,
      'contributor_details': contributeDetails,
      'include_entities': includeEntities
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Tweet>, Tweet>($request);
  }

  @override
  Future<Response<List<Tweet>>> retweetsOfMe(
      {String tweetMode = "extended",
      bool includeCards = true,
      String cardsPlatform = "TwitterKit-13",
      int count,
      int sinceId,
      int maxId,
      bool trimUser,
      bool includeEntities,
      bool includeUserEntities}) {
    final $url = '/statuses/retweets_of_me.json';
    final $params = <String, dynamic>{
      'tweet_mode': tweetMode,
      'include_cards': includeCards,
      'cards_platform': cardsPlatform,
      'count': count,
      'since_id': sinceId,
      'max_id': maxId,
      'trim_user': trimUser,
      'include_entities': includeEntities,
      'include_user_entities': includeUserEntities
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Tweet>, Tweet>($request);
  }

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
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Tweet, Tweet>($request);
  }

  @override
  Future<Response<List<Tweet>>> lookup(String id,
      {String tweetMode = "extended",
      bool includeCards = true,
      String cardsPlatform = "TwitterKit-13",
      bool includeEntities,
      bool trimUser,
      bool map}) {
    final $url = '/statuses/lookup.json';
    final $params = <String, dynamic>{
      'id': id,
      'tweet_mode': tweetMode,
      'include_cards': includeCards,
      'cards_platform': cardsPlatform,
      'include_entities': includeEntities,
      'trim_user': trimUser,
      'map': map
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<Tweet>, Tweet>($request);
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

  @override
  Future<Response<Tweet>> retweet(int id, StatusesRetweetBody retweetBody,
      {String tweetMode = "extended",
      bool includeCards = true,
      String cardsPlatform = "TwitterKit-13"}) {
    final $url = '/statuses/retweet/$id.json';
    final $params = <String, dynamic>{
      'tweet_mode': tweetMode,
      'include_cards': includeCards,
      'cards_platform': cardsPlatform
    };
    final $headers = {'content-type': 'application/x-www-form-urlencoded'};
    final $body = retweetBody;
    final $request = Request('POST', $url, client.baseUrl,
        body: $body, parameters: $params, headers: $headers);
    return client.send<Tweet, Tweet>($request, requestConverter: convertForm);
  }

  @override
  Future<Response<Tweet>> destroy(int id, StatusesDestroyBody destroyBody,
      {String tweetMode = "extended",
      bool includeCards = true,
      String cardsPlatform = "TwitterKit-13"}) {
    final $url = '/statuses/destroy/$id.json';
    final $params = <String, dynamic>{
      'tweet_mode': tweetMode,
      'include_cards': includeCards,
      'cards_platform': cardsPlatform
    };
    final $headers = {'content-type': 'application/x-www-form-urlencoded'};
    final $body = destroyBody;
    final $request = Request('POST', $url, client.baseUrl,
        body: $body, parameters: $params, headers: $headers);
    return client.send<Tweet, Tweet>($request, requestConverter: convertForm);
  }

  @override
  Future<Response<Tweet>> unretweet(int id, StatusesUnretweetBody unretweetBody,
      {String tweetMode = "extended",
      bool includeCards = true,
      String cardsPlatform = "TwitterKit-13"}) {
    final $url = '/statuses/unretweet/$id.json';
    final $params = <String, dynamic>{
      'tweet_mode': tweetMode,
      'include_cards': includeCards,
      'cards_platform': cardsPlatform
    };
    final $headers = {'content-type': 'application/x-www-form-urlencoded'};
    final $body = unretweetBody;
    final $request = Request('POST', $url, client.baseUrl,
        body: $body, parameters: $params, headers: $headers);
    return client.send<Tweet, Tweet>($request, requestConverter: convertForm);
  }
}
