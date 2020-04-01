import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/src/model/user_entities.dart';

import '../util.dart';

void main() {
  test('testDeserialization', () async {
    final userEntities = UserEntities.fromJson(
        await Util.getJson('assets/test/json/model_userentities.json'));
    expect(userEntities.url, isNotNull);
    expect(userEntities.url.urls, isNotEmpty);
    expect(userEntities.description, isNotNull);
    expect(userEntities.description.urls, isEmpty);
  });
}
