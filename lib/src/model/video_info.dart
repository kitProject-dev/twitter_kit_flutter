import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/variant.dart';

part 'video_info.g.dart';

@JsonSerializable()
class VideoInfo {
  VideoInfo(this.aspectRatio, this.durationMillis, this.variants);

  /// The aspect ratio of the video, as a simplified fraction of width and height in a 2-element
  /// list. Typical values are [4, 3] or [16, 9].
  @JsonKey(name: "aspect_ratio")
  final List<int> aspectRatio;

  /// The length of the video, in milliseconds.
  @JsonKey(name: "duration_millis")
  final int durationMillis;

  /// Different encodings/streams of the video.
  @JsonKey(name: "variants")
  final List<Variant> variants;

  factory VideoInfo.fromJson(Map<String, dynamic> json) =>
      _$VideoInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoInfoToJson(this);
}
