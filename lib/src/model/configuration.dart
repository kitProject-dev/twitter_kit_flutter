import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/sizes.dart';

part 'configuration.g.dart';

@JsonSerializable()
class Configuration {
  Configuration(this.dmTextCharacterLimit, this.nonUsernamePaths,
      this.photoSizeLimit, this.photoSizes, this.shortUrlLengthHttps);

  /// Maximum number of characters per direct message
  @JsonKey(name: "dm_text_character_limit")
  final int dmTextCharacterLimit;

  /// Slugs which are not user names
  @JsonKey(name: "non_username_paths")
  final List<String> nonUsernamePaths;

  /// Maximum size in bytes for the media file.
  @JsonKey(name: "photo_size_limit")
  final int photoSizeLimit;

  /// Maximum resolution for the media files.
  @JsonKey(name: "photo_sizes")
  final Sizes photoSizes;

  /// Current t.co URL length
  @JsonKey(name: "short_url_length_https")
  final int shortUrlLengthHttps;

  factory Configuration.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigurationToJson(this);
}
