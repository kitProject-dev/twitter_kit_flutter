import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/src/model/configuration.dart';
import 'package:twitter_kit/src/model/size.dart';

import '../util.dart';

void main() {
  const int _TEST_DM_CHAR_LIMIT = 10000;
  const int _TEST_SHORT_URL_LENGTH = 23;
  const int _TEST_NUN_NON_USER_NAME = 85;
  const int _TEST_PHOTO_SIZE_LIMIT = 3145728;
  final Size _testSizeThumb = Size(150, 150, "crop");
  final Size _testSizeThumbSmall = Size(340, 480, "fit");
  final Size _testSizeThumbMedium = Size(600, 1200, "fit");
  final Size _testSizeThumbLarge = Size(1024, 2048, "fit");

  test('testDeserialization', () async {
    final configuration = Configuration.fromJson(
        await Util.getJson('assets/test/json/model_configuration.json'));
    expect(configuration.dmTextCharacterLimit, _TEST_DM_CHAR_LIMIT);
    expect(configuration.nonUsernamePaths, isNotNull);
    expect(configuration.nonUsernamePaths.length, _TEST_NUN_NON_USER_NAME);
    expect(configuration.photoSizeLimit, _TEST_PHOTO_SIZE_LIMIT);
    expect(configuration.photoSizes, isNotNull);
    expect(configuration.photoSizes.thumb.h, _testSizeThumb.h);
    expect(configuration.photoSizes.thumb.w, _testSizeThumb.w);
    expect(configuration.photoSizes.thumb.resize, _testSizeThumb.resize);
    expect(configuration.photoSizes.small.h, _testSizeThumbSmall.h);
    expect(configuration.photoSizes.small.w, _testSizeThumbSmall.w);
    expect(configuration.photoSizes.small.resize, _testSizeThumbSmall.resize);
    expect(configuration.photoSizes.medium.h, _testSizeThumbMedium.h);
    expect(configuration.photoSizes.medium.w, _testSizeThumbMedium.w);
    expect(configuration.photoSizes.medium.resize, _testSizeThumbMedium.resize);
    expect(configuration.photoSizes.large.h, _testSizeThumbLarge.h);
    expect(configuration.photoSizes.large.w, _testSizeThumbLarge.w);
    expect(configuration.photoSizes.large.resize, _testSizeThumbLarge.resize);
    expect(configuration.shortUrlLengthHttps, _TEST_SHORT_URL_LENGTH);
  });
}
