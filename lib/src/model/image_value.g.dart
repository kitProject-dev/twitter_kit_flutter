// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageValue _$ImageValueFromJson(Map<String, dynamic> json) {
  return ImageValue(
    json['height'] as int,
    json['width'] as int,
    json['url'] as String,
    json['alt'] as String,
  );
}

Map<String, dynamic> _$ImageValueToJson(ImageValue instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'url': instance.url,
      'alt': instance.alt,
    };
