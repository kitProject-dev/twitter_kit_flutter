import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/src/model/url_entity.dart';

void main() {
  const String _TEST_JSON =
      "{\"indices\":[32,52], \"url\":\"http:\\/\\/t.co\\/IOwBrTZR\"," +
          "\"display_url\":\"youtube.com\\/watch?v=oHg5SJ\\u2026\"," +
          "\"expanded_url\":\"http:\\/\\/www.youtube.com\\/watch?v=oHg5SJYRHA0\"}";
  const int _TEST_INDICES_START = 32;
  const int _TEST_INDICES_END = 52;
  const String _TEST_URL = "http://t.co/IOwBrTZR";
  const String _TEST_DISPLAY_URL = "youtube.com/watch?v=oHg5SJ\u2026";
  const String _TEST_EXPANDED_URL =
      "http://www.youtube.com/watch?v=oHg5SJYRHA0";

  test('testDeserialization', () async {
    final entity = UrlEntity.fromJson(jsonDecode(_TEST_JSON));
    expect(entity.getStart(), _TEST_INDICES_START);
    expect(entity.getEnd(), _TEST_INDICES_END);
    expect(entity.url, _TEST_URL);
    expect(entity.displayUrl, _TEST_DISPLAY_URL);
    expect(entity.expandedUrl, _TEST_EXPANDED_URL);
  });
}
