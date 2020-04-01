import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/src/model/place.dart';

import '../util.dart';

void main() {
  const String _EXPECTED_COUNTRY = "United States";
  const String _EXPECTED_COUNTRY_CODE = "US";
  const String _EXPECTED_FULL_NAME = "Twitter HQ, San Francisco";
  const String _EXPECTED_ID = "247f43d441defc03";
  const String _EXPECTED_NAME = "Twitter HQ";
  const String _EXPECTED_PLACE_TYPE = "poi";
  const String _EXPECTED_URL =
      "https://api.twitter.com/1.1/geo/id/247f43d441defc03.json";

  const String _EXPECTED_ATTR_STREET_ADDRESS = "street_address";
  const String _EXPECTED_ATTR_STREET_ADDRESS_VALUE = "795 Folsom St";
  const String _EXPECTED_ATTR_623_ID = "623:id";
  const String _EXPECTED_ATTR_623_ID_VALUE = "210176";
  const String _EXPECTED_ATTR_TWITTER = "twitter";
  const String _EXPECTED_ATTR_TWITTER_VALUE = "twitter";

  const double _EXPECTED_BOUNDING_BOX_LONGITUDE = -122.400612831116;
  const double _EXPECTED_BOUNDING_BOX_LATITUDE = 37.7821120598956;
  const String _EXPECTED_BOUNDING_BOX_TYPE = "Polygon";

  test('testDeserialization', () async {
    final place = Place.fromJson(
        await Util.getJson('assets/test/json/model_places.json'));
    expect(place.attributes[_EXPECTED_ATTR_STREET_ADDRESS],
        _EXPECTED_ATTR_STREET_ADDRESS_VALUE);
    expect(
        place.attributes[_EXPECTED_ATTR_623_ID], _EXPECTED_ATTR_623_ID_VALUE);
    expect(
        place.attributes[_EXPECTED_ATTR_TWITTER], _EXPECTED_ATTR_TWITTER_VALUE);
    expect(place.boundingBox.type, _EXPECTED_BOUNDING_BOX_TYPE);
    expect(place.boundingBox.coordinates[0].length, 4);
    for (var d in place.boundingBox.coordinates[0]) {
      expect(d[0], _EXPECTED_BOUNDING_BOX_LONGITUDE);
      expect(d[1], _EXPECTED_BOUNDING_BOX_LATITUDE);
    }
    expect(place.country, _EXPECTED_COUNTRY);
    expect(place.countryCode, _EXPECTED_COUNTRY_CODE);
    expect(place.fullName, _EXPECTED_FULL_NAME);
    expect(place.id, _EXPECTED_ID);
    expect(place.name, _EXPECTED_NAME);
    expect(place.placeType, _EXPECTED_PLACE_TYPE);
    expect(place.url, _EXPECTED_URL);
  });
}
