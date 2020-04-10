import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/twitter_kit.dart';

void main() {
  const String _EXPECTED_CREATED_AT = "Wed Mar 25 02:52:58 +0000 2020";
  const int _EXPECTED_ID = 1242645624106807297;
  const String _EXPECTED_TEXT =
      "Twitterのツイートをカテゴリ分けして保存するアプリふぁぼーん for Androidを開発しています。\nツイート上の動画の保存もできるので通信費の節約にもなります。\n世界中のツイートを保存しちゃおう！！\nhttps://t.co/bF9II8sE4d\n#ふぁぼーん #ツイート保存 #動画保存 https://t.co/7cQ5tOTr7P";

  Twitter _twitter;

  setUp(() {
    // TODO Your key.
    _twitter = Twitter("", "");
    _twitter.createClient("", "");
  });

  test('show', () async {
    final response = await _twitter.statusesService.show(1242645624106807297);
    final tweet = response.body;
    expect(tweet.createdAt, _EXPECTED_CREATED_AT);
    expect(tweet.entities, isNotNull);
    expect(tweet.entities.hashtags, isNotNull);
    expect(tweet.entities.media, isNotNull);
    expect(tweet.entities.symbols, isNotNull);
    expect(tweet.entities.urls, isNotNull);
    expect(tweet.entities.userMentions, isNotNull);
    expect(tweet.user, isNotNull);
    expect(tweet.retweeted, isFalse);
    expect(tweet.id, _EXPECTED_ID);
    expect(tweet.idStr, _EXPECTED_ID.toString());
    expect(tweet.text, isNull);
    expect(tweet.fullText, isNotNull);
    expect(tweet.fullText, _EXPECTED_TEXT);
    expect(tweet.displayTextRange, isNotNull);
    expect(tweet.truncated, isFalse);
    expect(tweet.withheldInCountries, isNotNull);
    expect(tweet.withheldInCountries.length, 0);
  });
}
