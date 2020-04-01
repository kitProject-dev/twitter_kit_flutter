import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/src/model/mention_entity.dart';

void main() {
  const String _TEST_JSON = "{\"name\":\"Twitter API\"," +
      "\"indices\":[4,15], \"screen_name\":\"twitterapi\"," +
      "\"id\":6253282, \"id_str\":\"6253282\"}";
  const int _TEST_INDICES_START = 4;
  const int _TEST_INDICES_END = 15;
  const int _TEST_ID = 6253282;
  const String _TEST_ID_STR = "6253282";
  const String _TEST_NAME = "Twitter API";
  const String _TEST_SCREEN_NAME = "twitterapi";

  test('testDeserialization', () async {
    final entity = MentionEntity.fromJson(jsonDecode(_TEST_JSON));
    expect(entity.getStart(), _TEST_INDICES_START);
    expect(entity.getEnd(), _TEST_INDICES_END);
    expect(entity.id, _TEST_ID);
    expect(entity.idStr, _TEST_ID_STR);
    expect(entity.name, _TEST_NAME);
    expect(entity.screenName, _TEST_SCREEN_NAME);
  });
}
