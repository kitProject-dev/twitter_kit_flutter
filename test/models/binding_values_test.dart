import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/src/model/binding_values.dart';
import 'package:twitter_kit/src/model/card.dart';
import 'package:twitter_kit/src/model/image_value.dart';
import 'package:twitter_kit/src/model/user_value.dart';

import '../util.dart';

void main() {
  test('testDeserialize_withValidBindingValues', () async {
    final card =
        Card.fromJson(await Util.getJson('assets/test/json/model_card.json'));
    expect(card.bindingValues, isNotNull);
    expect(card.bindingValues.containsKey("app_id"), isTrue);
    expect(card.bindingValues["app_id"], "co.vine.android");
    expect(card.bindingValues.containsKey("app_is_free"), isTrue);
    expect(card.bindingValues["app_is_free"], "true");
    expect(card.bindingValues.containsKey("app_name"), isTrue);
    expect(card.bindingValues["app_name"], "Vine - video entertainment");
    expect(card.bindingValues.containsKey("app_num_ratings"), isTrue);
    expect(card.bindingValues["app_num_ratings"], "1,080,460");
    expect(card.bindingValues.containsKey("app_price_amount"), isTrue);
    expect(card.bindingValues["app_price_amount"], "0.0");
    expect(card.bindingValues.containsKey("app_price_currency"), isTrue);
    expect(card.bindingValues["app_price_currency"], "USD");
    expect(card.bindingValues.containsKey("app_star_rating"), isTrue);
    expect(card.bindingValues["app_star_rating"], "4.2");
    expect(card.bindingValues.containsKey("app_url"), isTrue);
    expect(card.bindingValues.containsKey("app_url_resolved"), isTrue);
    expect(card.bindingValues.containsKey("card_url"), isTrue);
    expect(card.bindingValues.containsKey("description"), isTrue);
    expect(card.bindingValues["description"], "Vine by Krystaalized");
    expect(card.bindingValues.containsKey("domain"), isTrue);
    expect(card.bindingValues["domain"], "vine.co");
    expect(card.bindingValues.containsKey("player_height"), isTrue);
    expect(card.bindingValues["player_height"], "535");
    expect(card.bindingValues.containsKey("player_image"), isTrue);
    final ImageValue imageValue = card.bindingValues["player_image"];
    expect(imageValue, isNotNull);
    expect(imageValue.height, 480);
    expect(imageValue.width, 480);
    expect(imageValue.url, "https://o.twimg.com/qwhjddd");
    expect(
        card.bindingValues.containsKey("player_stream_content_type"), isTrue);
    expect(card.bindingValues.containsKey("player_stream_url"), isTrue);
    expect(card.bindingValues.containsKey("player_url"), isTrue);
    expect(card.bindingValues.containsKey("player_width"), isTrue);
    expect(card.bindingValues["player_width"], "535");
    expect(card.bindingValues.containsKey("site"), isTrue);
    expect(card.bindingValues["site"], isNotNull);
    expect((card.bindingValues["site"] as UserValue).idStr, "586671909");
    expect(card.bindingValues.containsKey("title"), isTrue);
    expect(card.bindingValues.containsKey("vanity_url"), isTrue);
    expect(card.bindingValues["vanity_url"], "vine.co");
    expect(card.bindingValues.containsKey("foo"), isFalse);
    expect(card.bindingValues.containsKey(null), isFalse);
  });

  test('testDeserialize_withEmptyBindingValues', () async {
    final bindingValues = BindingValues.fromJson(jsonDecode("{}"));
    expect(bindingValues, isNotNull);
  });

  test('testDeserialize_withNoType', () async {
    final bindingValues =
        BindingValues.fromJson(jsonDecode("{\"app_id\": {}}"));
    expect(bindingValues, isNotNull);
    expect(bindingValues.containsKey("app_id"), isTrue);
    expect(bindingValues["app_id"], isNull);
  });

  test('testDeserialize_withUnsupportedType', () async {
    final bindingValues = BindingValues.fromJson(
        jsonDecode("{\"app_id\": {\"type\": \"FOOBAR\"}}"));
    expect(bindingValues, isNotNull);
    expect(bindingValues.containsKey("app_id"), isTrue);
    expect(bindingValues["app_id"], isNull);
  });

  test('testDeserialize_withNonPrimitiveType', () async {
    final bindingValues =
        BindingValues.fromJson(jsonDecode("{\"app_id\": {\"type\": {}}}"));
    expect(bindingValues, isNotNull);
    expect(bindingValues.containsKey("app_id"), isTrue);
    expect(bindingValues["app_id"], isNull);
  });

  test('testDeserialize_withNoValue', () async {
    final bindingValues = BindingValues.fromJson(
        jsonDecode("{\"app_id\": {\"type\": \"STRING\"}}"));
    expect(bindingValues, isNotNull);
    expect(bindingValues.containsKey("app_id"), isTrue);
    expect(bindingValues["app_id"], isNull);
  });
}
