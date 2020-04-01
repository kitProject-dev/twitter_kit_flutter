import 'package:json_annotation/json_annotation.dart';

part 'image_value.g.dart';

@JsonSerializable()
class ImageValue {
  ImageValue(this.height, this.width, this.url, this.alt);

  @JsonKey(name: "height")
  final int height;

  @JsonKey(name: "width")
  final int width;

  @JsonKey(name: "url")
  final String url;

  @JsonKey(name: "alt")
  final String alt;

  factory ImageValue.fromJson(Map<String, dynamic> json) =>
      _$ImageValueFromJson(json);

  Map<String, dynamic> toJson() => _$ImageValueToJson(this);
}
