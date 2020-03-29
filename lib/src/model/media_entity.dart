import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/sizes.dart';
import 'package:twitter_kit/src/model/video_info.dart';

part 'media_entity.g.dart';

@JsonSerializable()
class MediaEntity {
  MediaEntity(
      this.id,
      this.idStr,
      this.mediaUrl,
      this.mediaUrlHttps,
      this.sizes,
      this.sourceStatusId,
      this.sourceStatusIdStr,
      this.type,
      this.videoInfo,
      this.altText);

  /// ID of the media expressed as a 64-bit integer.
  @JsonKey(name: "id")
  final int id;

  /// ID of the media expressed as a string.
  @JsonKey(name: "id_str")
  final String idStr;

  /// A http:// URL pointing directly to the uploaded media file.
  ///
  /// For media in direct messages, media_url is the same https URL as media_url_https and must be
  /// accessed via an authenticated twitter.com session or by signing a request with the user's
  /// access token using OAuth 1.0A. It is not possible to directly embed these images in a web
  /// page.
  @JsonKey(name: "media_url")
  final String mediaUrl;

  /// A https:// URL pointing directly to the uploaded media file, for embedding on https pages.
  ///
  /// For media in direct messages, media_url_https must be accessed via an authenticated
  /// twitter.com session or by signing a request with the user's access token using OAuth 1.0A.
  /// It is not possible to directly embed these images in a web page.
  @JsonKey(name: "media_url_https")
  final String mediaUrlHttps;

  /// An object showing available sizes for the media file.
  @JsonKey(name: "sizes")
  final Sizes sizes;

  /// For Tweets containing media that was originally associated with a different tweet, this ID
  /// points to the original Tweet.
  @JsonKey(name: "source_status_id")
  final int sourceStatusId;

  /// For Tweets containing media that was originally associated with a different tweet, this
  /// string-based ID points to the original Tweet.
  @JsonKey(name: "source_status_id_str")
  final String sourceStatusIdStr;

  /// Type of uploaded media.
  @JsonKey(name: "type")
  final String type;

  /// An object showing details for the video file. This field is present only when there is a
  /// video in the payload.
  @JsonKey(name: "video_info")
  final VideoInfo videoInfo;

  @JsonKey(name: "ext_alt_text")
  final String altText;

  factory MediaEntity.fromJson(Map<String, dynamic> json) =>
      _$MediaEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MediaEntityToJson(this);
}
