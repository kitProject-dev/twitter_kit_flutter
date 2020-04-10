// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_destroy_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteDestroyBody _$FavoriteDestroyBodyFromJson(Map<String, dynamic> json) {
  return FavoriteDestroyBody(
    json['id'] as int,
    includeEntities: json['include_entities'] as bool,
  );
}

Map<String, dynamic> _$FavoriteDestroyBodyToJson(
        FavoriteDestroyBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'include_entities': instance.includeEntities,
    };
