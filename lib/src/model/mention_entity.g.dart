// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mention_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MentionEntity _$MentionEntityFromJson(Map<String, dynamic> json) {
  return MentionEntity(
    (json['indices'] as List)?.map((e) => e as int)?.toList(),
    json['id'] as int,
    json['id_str'] as String,
    json['name'] as String,
    json['screen_name'] as String,
  );
}

Map<String, dynamic> _$MentionEntityToJson(MentionEntity instance) =>
    <String, dynamic>{
      'indices': instance.indices,
      'id': instance.id,
      'id_str': instance.idStr,
      'name': instance.name,
      'screen_name': instance.screenName,
    };
