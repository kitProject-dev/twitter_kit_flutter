import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/src/model/twitter_collection.dart';

import '../util.dart';

void main() {
  const int _EXPECTED_NUM_USERS = 2;
  const int _EXPECTED_NUM_TWEETS = 3;
  const int _EXPECTED_TWEET_ID_FIRST = 504032379045179393;
  const int _EXPECTED_TWEET_ID_SECOND = 532654992071852032;
  const int _EXPECTED_USER_ID_FIRST = 2244994945;
  const String _EXPECTED_USER_SCREEN_NAME_FIRST = "TwitterDev";

  const String _EXPECTED_TIMELINE_ID = "custom-539487832448843776";
  const int _EXPECTED_MAX_POSITION = 371578415352947200;
  const int _EXPECTED_MIN_POSITION = 371578380871797248;

  test('testDeserialization', () async {
    final twitterCollection = TwitterCollection.fromJson(
        await Util.getJson('assets/test/json/model_twitter_collection.json'));
    expect(twitterCollection.contents.tweetMap.length, _EXPECTED_NUM_TWEETS);
    expect(twitterCollection.contents.userMap.length, _EXPECTED_NUM_USERS);
    expect(
        twitterCollection.contents.tweetMap
            .containsKey(_EXPECTED_TWEET_ID_FIRST),
        isTrue);
    expect(twitterCollection.contents.tweetMap[_EXPECTED_TWEET_ID_FIRST].id,
        _EXPECTED_TWEET_ID_FIRST);
    expect(
        twitterCollection.contents.tweetMap
            .containsKey(_EXPECTED_TWEET_ID_SECOND),
        isTrue);
    expect(
        twitterCollection.contents.userMap.containsKey(_EXPECTED_USER_ID_FIRST),
        isTrue);
    expect(
        twitterCollection.contents.userMap[_EXPECTED_USER_ID_FIRST].screenName,
        _EXPECTED_USER_SCREEN_NAME_FIRST);

    expect(twitterCollection.metadata.timelineId, _EXPECTED_TIMELINE_ID);
    expect(twitterCollection.metadata.position.maxPosition,
        _EXPECTED_MAX_POSITION.toString());
    expect(twitterCollection.metadata.position.minPosition,
        _EXPECTED_MIN_POSITION.toString());
    expect(
        twitterCollection.metadata.timelineItems.length, _EXPECTED_NUM_TWEETS);
    expect(twitterCollection.metadata.timelineItems[0].tweetItem.id,
        _EXPECTED_TWEET_ID_FIRST.toString());
    expect(twitterCollection.metadata.timelineItems[1].tweetItem.id,
        _EXPECTED_TWEET_ID_SECOND.toString());
  });
}
