import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/src/model/tweet_entities.dart';

import '../util.dart';

void main() {
  const int _EXPECTED_URLS_SIZE = 1;
  const int _EXPECTED_USER_MENTIONS_SIZE = 1;
  const int _EXPECTED_MEDIA_SIZE = 1;
  const int _EXPECTED_HASHTAGS_SIZE = 1;
  const int _EXPECTED_SYMBOLS_SIZE = 1;

  test('testConstructor_nullParameters', () async {
    final entities = TweetEntities.empty;
    expect(entities.urls, []);
    expect(entities.userMentions, []);
    expect(entities.media, []);
    expect(entities.hashtags, []);
  });

  test('testDeserialization', () async {
    final tweetEntities = TweetEntities.fromJson(
        await Util.getJson('assets/test/json/model_tweetentities.json'));
    expect(tweetEntities.urls.length, _EXPECTED_URLS_SIZE);
    expect(tweetEntities.userMentions.length, _EXPECTED_USER_MENTIONS_SIZE);
    expect(tweetEntities.media.length, _EXPECTED_MEDIA_SIZE);
    expect(tweetEntities.hashtags.length, _EXPECTED_HASHTAGS_SIZE);
    expect(tweetEntities.symbols.length, _EXPECTED_SYMBOLS_SIZE);
  });

  test('testDeserialization_noEntities', () async {
    final tweetEntities = TweetEntities.fromJson(jsonDecode("{\"urls\":[]}"));
    expect(tweetEntities.urls, isNotNull);
    expect(tweetEntities.urls.length, 0);
    expect(tweetEntities.userMentions, isNotNull);
    expect(tweetEntities.userMentions.length, 0);
    expect(tweetEntities.media, isNotNull);
    expect(tweetEntities.media.length, 0);
    expect(tweetEntities.hashtags, isNotNull);
    expect(tweetEntities.hashtags.length, 0);
    expect(tweetEntities.symbols, isNotNull);
    expect(tweetEntities.symbols.length, 0);
  });
}
