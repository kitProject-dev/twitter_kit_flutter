import 'package:json_annotation/json_annotation.dart';

part 'variant.g.dart';

@JsonSerializable()
class Variant {
  Variant(this.bitrate, this.contentType, this.url);

  @JsonKey(name:"bitrate")
   final int bitrate;

  @JsonKey(name:"content_type")
   final String contentType;

  @JsonKey(name:"url")
   final String url;

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);

  Map<String, dynamic> toJson() => _$VariantToJson(this);
}
