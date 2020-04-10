// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_create_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteCreateBody _$FavoriteCreateBodyFromJson(Map<String, dynamic> json) {
  return FavoriteCreateBody(
    json['id'] as int,
    includeEntities: json['include_entities'] as bool,
  );
}

Map<String, dynamic> _$FavoriteCreateBodyToJson(FavoriteCreateBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'include_entities': instance.includeEntities,
    };
