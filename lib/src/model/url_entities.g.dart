// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UrlEntities _$UrlEntitiesFromJson(Map<String, dynamic> json) {
  return UrlEntities(
    (json['urls'] as List)
        ?.map((e) =>
            e == null ? null : UrlEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UrlEntitiesToJson(UrlEntities instance) =>
    <String, dynamic>{
      'urls': instance.urls,
    };
