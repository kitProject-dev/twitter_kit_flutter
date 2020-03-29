// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UrlEntity _$UrlEntityFromJson(Map<String, dynamic> json) {
  return UrlEntity(
    json['url'] as String,
    json['expanded_url'] as String,
    json['display_url'] as String,
  );
}

Map<String, dynamic> _$UrlEntityToJson(UrlEntity instance) => <String, dynamic>{
      'url': instance.url,
      'expanded_url': instance.expandedUrl,
      'display_url': instance.displayUrl,
    };
