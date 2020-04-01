// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hashtag_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HashtagEntity _$HashtagEntityFromJson(Map<String, dynamic> json) {
  return HashtagEntity(
    (json['indices'] as List)?.map((e) => e as int)?.toList(),
    json['text'] as String,
  );
}

Map<String, dynamic> _$HashtagEntityToJson(HashtagEntity instance) =>
    <String, dynamic>{
      'indices': instance.indices,
      'text': instance.text,
    };
