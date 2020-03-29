// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntities _$UserEntitiesFromJson(Map<String, dynamic> json) {
  return UserEntities(
    json['url'] == null
        ? null
        : UrlEntities.fromJson(json['url'] as Map<String, dynamic>),
    json['description'] == null
        ? null
        : UrlEntities.fromJson(json['description'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserEntitiesToJson(UserEntities instance) =>
    <String, dynamic>{
      'url': instance.url,
      'description': instance.description,
    };
