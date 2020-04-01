import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/src/model/entity.dart';

void main() {
  const String _TEST_JSON = "{\"indices\":[32,36]}";
  const int _TEST_INDICES_START = 32;
  const int _TEST_INDICES_END = 36;

  test('testDeserialization', () async {
    final entity = Entity.fromJson(jsonDecode(_TEST_JSON));
    expect(entity.getStart(), _TEST_INDICES_START);
    expect(entity.getEnd(), _TEST_INDICES_END);
  });
}
