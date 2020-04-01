import 'package:flutter_test/flutter_test.dart';
import 'package:twitter_kit/src/model/media_entity.dart';
import 'package:twitter_kit/src/model/size.dart';
import 'package:twitter_kit/src/model/variant.dart';

import '../util.dart';

void main() {
  const int _TEST_INDICES_START = 117;
  const int _TEST_INDICES_END = 139;
  const String _TEST_URL = "http://t.co/lvYVFjAbzz";
  const String _TEST_DISPLAY_URL = "pic.twitter.com/lvYVFjAbzz";
  const String _TEST_EXPANDED_URL =
      "http://twitter.com/jbulava/status/606528031289655296/video/1";
  const int _TEST_ID = 606527664086781952;
  const String _TEST_ID_STR = "606527664086781952";
  const String _TEST_MEDIA_URL =
      "http://pbs.twimg.com/ext_tw_video_thumb/606527664086781952/pu/img/mInvoINHjLcN8Mvk.jpg";
  const String _TEST_MEDIA_URL_HTTPS =
      "https://pbs.twimg.com/ext_tw_video_thumb/606527664086781952/pu/img/mInvoINHjLcN8Mvk.jpg";
  final Size _testSizeThumb = Size(150, 150, "crop");
  final Size _testSizeSmall = Size(340, 191, "fit");
  final Size _testSizeMedium = Size(600, 338, "fit");
  final Size _testSizeLarge = Size(1024, 576, "fit");
  const int _TEST_SOURCE_STATUS_ID = 205282515685081088;
  const String _TEST_SOURCE_STATUS_ID_STR = "205282515685081088";
  const String _TEST_TYPE = "video";
  const int _TEST_ASPECT_WIDTH = 16;
  const int _TEST_ASPECT_HEIGHT = 9;
  const int _TEST_DURATION = 30024;
  const int _TEST_TOTAL_VARIANTS = 2;
  const String _TEST_ALT_TEXT = "A Twitter employee";
  const String _TEST_URL_0 =
      "https://video.twimg.com/ext_tw_video/606527664086781952/pu/vid/640x360/jdAs88NgP4N3Iqtu.mp4";
  final Variant _testVariant0 = Variant(832000, "video/mp4", _TEST_URL_0);
  const String _TEST_URL_1 =
      "https://video.twimg.com/ext_tw_video/606527664086781952/pu/vid/640x360/jdAs88NgP4N3Iqtu.webm";
  final Variant _testVariant1 = new Variant(832000, "video/webm", _TEST_URL_1);

  test('testDeserialization', () async {
    final entity = MediaEntity.fromJson(
        await Util.getJson('assets/test/json/model_media_entity.json'));
    expect(entity.getStart(), _TEST_INDICES_START);
    expect(entity.getEnd(), _TEST_INDICES_END);
    expect(entity.url, _TEST_URL);
    expect(entity.displayUrl, _TEST_DISPLAY_URL);
    expect(entity.expandedUrl, _TEST_EXPANDED_URL);
    expect(entity.id, _TEST_ID);
    expect(entity.idStr, _TEST_ID_STR);
    expect(entity.mediaUrl, _TEST_MEDIA_URL);
    expect(entity.mediaUrlHttps, _TEST_MEDIA_URL_HTTPS);
    expect(entity.sizes.thumb.h, _testSizeThumb.h);
    expect(entity.sizes.thumb.w, _testSizeThumb.w);
    expect(entity.sizes.thumb.resize, _testSizeThumb.resize);
    expect(entity.sizes.small.h, _testSizeSmall.h);
    expect(entity.sizes.small.w, _testSizeSmall.w);
    expect(entity.sizes.small.resize, _testSizeSmall.resize);
    expect(entity.sizes.medium.h, _testSizeMedium.h);
    expect(entity.sizes.medium.w, _testSizeMedium.w);
    expect(entity.sizes.medium.resize, _testSizeMedium.resize);
    expect(entity.sizes.large.h, _testSizeLarge.h);
    expect(entity.sizes.large.w, _testSizeLarge.w);
    expect(entity.sizes.large.resize, _testSizeLarge.resize);
    expect(entity.sourceStatusId, _TEST_SOURCE_STATUS_ID);
    expect(entity.sourceStatusIdStr, _TEST_SOURCE_STATUS_ID_STR);
    expect(entity.type, _TEST_TYPE);
    expect(entity.videoInfo.aspectRatio[0], _TEST_ASPECT_WIDTH);
    expect(entity.videoInfo.aspectRatio[1], _TEST_ASPECT_HEIGHT);
    expect(entity.videoInfo.durationMillis, _TEST_DURATION);
    expect(entity.videoInfo.variants.length, _TEST_TOTAL_VARIANTS);
    expect(entity.videoInfo.variants[0].bitrate, _testVariant0.bitrate);
    expect(entity.videoInfo.variants[0].contentType, _testVariant0.contentType);
    expect(entity.videoInfo.variants[0].url, _testVariant0.url);
    expect(entity.videoInfo.variants[1].bitrate, _testVariant1.bitrate);
    expect(entity.videoInfo.variants[1].contentType, _testVariant1.contentType);
    expect(entity.videoInfo.variants[1].url, _testVariant1.url);
    expect(entity.altText, _TEST_ALT_TEXT);
  });
}
