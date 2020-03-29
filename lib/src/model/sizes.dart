import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/size.dart';

part 'sizes.g.dart';

@JsonSerializable()
class Sizes {
  Sizes(this.medium, this.thumb, this.small, this.large);

  /// Information for a medium-sized version of the media.
  @JsonKey(name: "medium")
  final Size medium;

  /// Information for a thumbnail-sized version of the media.
  @JsonKey(name: "thumb")
  final Size thumb;

  /// Information for a small-sized version of the media.
  @JsonKey(name: "small")
  final Size small;

  /// Information for a large-sized version of the media.
  @JsonKey(name: "large")
  final Size large;

  factory Sizes.fromJson(Map<String, dynamic> json) => _$SizesFromJson(json);

  Map<String, dynamic> toJson() => _$SizesToJson(this);
}
