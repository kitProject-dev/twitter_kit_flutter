import 'package:json_annotation/json_annotation.dart';

part 'size.g.dart';

@JsonSerializable()
class Size {
  Size(this.w, this.h, this.resize);

  /// Width in pixels of this size.
  @JsonKey(name: "w")
  final int w;

  /// Height in pixels of this size.
  @JsonKey(name: "h")
  final int h;

  /// Resizing method used to obtain this size. A value of fit means that the media was resized
  /// to fit one dimension, keeping its native aspect ratio. A value of crop means that the
  /// media was cropped in order to fit a specific resolution.
  @JsonKey(name: "resize")
  final String resize;

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);

  Map<String, dynamic> toJson() => _$SizeToJson(this);
}
