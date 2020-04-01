import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/src/model/symbol_entity.dart';

void main() {
  const String _TEST_JSON = "{\"indices\":[32,36],\"text\":\"TWTR\"}";
  const int _TEST_INDICES_START = 32;
  const int _TEST_INDICES_END = 36;
  const String _TEST_TEXT = "TWTR";

  test('testDeserialization', () async {
    final entity = SymbolEntity.fromJson(jsonDecode(_TEST_JSON));
    expect(entity.getStart(), _TEST_INDICES_START);
    expect(entity.getEnd(), _TEST_INDICES_END);
    expect(entity.text, _TEST_TEXT);
  });
}
