import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/src/model/user.dart';

import '../util.dart';

void main() {
  const int _EXPECTED_ID = 795649;
  const String _EXPECTED_NAME = "Ryan Sarver";
  const String _EXPECTED_SCREEN_NAME = "rsarver";
  const String _EXPECTED_PROFILE_IMAGE_URL_HTTPS =
      "https://si0.twimg.com/profile_images/1777569006/image1327396628_normal.png";
  const bool _EXPECTED_VERIFIED = false;
  const String _EXPECTED_WITHHELD_IN_COUNTRIES = "XY";

  test('testDeserialization', () async {
    final user =
        User.fromJson(await Util.getJson('assets/test/json/model_user.json'));
    expect(user.id, _EXPECTED_ID);
    expect(user.idStr, _EXPECTED_ID.toString());
    expect(user.name, _EXPECTED_NAME);
    expect(user.entities.url.urls.length > 0, isTrue);
    expect(user.entities.description.urls, isEmpty);
    expect(user.screenName, _EXPECTED_SCREEN_NAME);
    expect(user.profileImageUrlHttps, _EXPECTED_PROFILE_IMAGE_URL_HTTPS);
    expect(user.verified, _EXPECTED_VERIFIED);
    expect(user.status, isNotNull);
    expect(user.withheldInCountries, isNotNull);
    expect(user.withheldInCountries.length, 1);
    expect(user.withheldInCountries[0], _EXPECTED_WITHHELD_IN_COUNTRIES);
  });
}
