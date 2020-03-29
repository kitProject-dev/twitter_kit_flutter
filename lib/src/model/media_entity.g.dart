// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaEntity _$MediaEntityFromJson(Map<String, dynamic> json) {
  return MediaEntity(
    json['id'] as int,
    json['id_str'] as String,
    json['media_url'] as String,
    json['media_url_https'] as String,
    json['sizes'] == null
        ? null
        : Sizes.fromJson(json['sizes'] as Map<String, dynamic>),
    json['source_status_id'] as int,
    json['source_status_id_str'] as String,
    json['type'] as String,
    json['video_info'] == null
        ? null
        : VideoInfo.fromJson(json['video_info'] as Map<String, dynamic>),
    json['ext_alt_text'] as String,
  );
}

Map<String, dynamic> _$MediaEntityToJson(MediaEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_str': instance.idStr,
      'media_url': instance.mediaUrl,
      'media_url_https': instance.mediaUrlHttps,
      'sizes': instance.sizes,
      'source_status_id': instance.sourceStatusId,
      'source_status_id_str': instance.sourceStatusIdStr,
      'type': instance.type,
      'video_info': instance.videoInfo,
      'ext_alt_text': instance.altText,
    };
