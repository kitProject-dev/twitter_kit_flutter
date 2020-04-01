// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return Metadata(
    json['timeline_id'] as String,
    json['position'] == null
        ? null
        : Position.fromJson(json['position'] as Map<String, dynamic>),
    (json['timeline'] as List)
        ?.map((e) =>
            e == null ? null : TimelineItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'timeline_id': instance.timelineId,
      'position': instance.position,
      'timeline': instance.timelineItems,
    };
