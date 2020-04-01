import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/src/model/coordinates.dart';

void main() {
  const String _TEST_JSON = "{\n" +
      "    \"coordinates\":\n" +
      "    [\n" +
      "        -75.14310264,\n" +
      "        40.05701649\n" +
      "    ],\n" +
      "    \"type\":\"Point\"\n" +
      "}\n";
  const double _TEST_COORDINATES_LONGITUDE = -75.14310264;
  const double _TEST_COORDINATES_LATITUDE = 40.05701649;
  const String _TEST_TYPE = "Point";

  test('testDeserialization', () async {
    final coordinates = Coordinates.fromJson(jsonDecode(_TEST_JSON));
    expect(coordinates.getLongitude(), _TEST_COORDINATES_LONGITUDE);
    expect(coordinates.getLatitude(), _TEST_COORDINATES_LATITUDE);
    expect(coordinates.type, _TEST_TYPE);
  });
}
