import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/twitter_kit.dart';

import '../util.dart';

void main() {
  const String _EXPECTED_CREATED_AT = "Wed Jun 06 20:07:10 +0000 2012";
  const int _EXPECTED_ID = 210462857140252672;
  const String _EXPECTED_TEXT =
      "Along with our new #Twitterbird, we've also updated our Display Guidelines: https://t.co/Ed4omjYs  ^JC";
  const List<int> _EXPECTED_DISPLAY_TEXT_RANGE = [0, 102];
  const String _EXPECTED_WITHHELD_IN_COUNTRIES = "XY";
  const int _EXPECTED_QUOTED_STATUS_ID = 745634624466911232;

  test('testDeserialization', () async {
    final tweet =
        Tweet.fromJson(await Util.getJson('assets/test/json/model_tweet.json'));
    expect(tweet.createdAt, _EXPECTED_CREATED_AT);
    expect(tweet.entities, isNotNull);
    expect(tweet.entities.hashtags, isNotNull);
    expect(tweet.entities.media, isNotNull);
    expect(tweet.entities.symbols, isNotNull);
    expect(tweet.entities.urls, isNotNull);
    expect(tweet.entities.userMentions, isNotNull);
    expect(tweet.user, isNotNull);
    expect(tweet.retweeted, isTrue);
    expect(tweet.id, _EXPECTED_ID);
    expect(tweet.idStr, _EXPECTED_ID.toString());
    expect(tweet.text, isNull);
    expect(tweet.fullText, isNotNull);
    expect(tweet.fullText, _EXPECTED_TEXT);
    expect(tweet.displayTextRange, isNotNull);
    expect(tweet.truncated, isFalse);
    expect(tweet.displayTextRange.toList(), _EXPECTED_DISPLAY_TEXT_RANGE);
    expect(tweet.withheldInCountries, isNotNull);
    expect(tweet.withheldInCountries.length, 1);
    expect(tweet.withheldInCountries[0], _EXPECTED_WITHHELD_IN_COUNTRIES);
  });

  test('testQuotedTweetDeserialization', () async {
    final quotedTweet = Tweet.fromJson(
        await Util.getJson('assets/test/json/model_quoted_tweet.json'));
    expect(quotedTweet.quotedStatusId, _EXPECTED_QUOTED_STATUS_ID);
    expect(
        quotedTweet.quotedStatusIdStr, _EXPECTED_QUOTED_STATUS_ID.toString());
    expect(quotedTweet.quotedStatus, isNotNull);
  });
}
