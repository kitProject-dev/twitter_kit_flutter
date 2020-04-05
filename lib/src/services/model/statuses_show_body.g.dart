// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statuses_show_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusesShowBody _$StatusesShowBodyFromJson(Map<String, dynamic> json) {
  return StatusesShowBody(
    json['id'] as int,
    trimUser: json['trimUser'] as bool,
    includeMyRetweet: json['include_my_retweet'] as bool,
    includeEntities: json['include_entities'] as bool,
  );
}

Map<String, dynamic> _$StatusesShowBodyToJson(StatusesShowBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'trimUser': instance.trimUser,
      'include_my_retweet': instance.includeMyRetweet,
      'include_entities': instance.includeEntities,
    };
