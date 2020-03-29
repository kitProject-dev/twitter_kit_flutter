// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variant _$VariantFromJson(Map<String, dynamic> json) {
  return Variant(
    json['bitrate'] as int,
    json['content_type'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$VariantToJson(Variant instance) => <String, dynamic>{
      'bitrate': instance.bitrate,
      'content_type': instance.contentType,
      'url': instance.url,
    };
