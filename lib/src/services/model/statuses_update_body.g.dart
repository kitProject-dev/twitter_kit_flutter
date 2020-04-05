// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statuses_update_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusesUpdateBody _$StatusesUpdateBodyFromJson(Map<String, dynamic> json) {
  return StatusesUpdateBody(
    json['status'] as String,
    inReplyToStatusId: json['in_reply_to_status_id'] as int,
    possiblySensitive: json['possibly_sensitive'] as bool,
    latitude: (json['lat'] as num)?.toDouble(),
    longitude: (json['long'] as num)?.toDouble(),
    placeId: json['place_id'] as String,
    displayCoordinates: json['display_coordinates'] as bool,
    trimUser: json['trim_user'] as bool,
    mediaIds: json['media_ids'] as String,
  );
}

Map<String, dynamic> _$StatusesUpdateBodyToJson(StatusesUpdateBody instance) =>
    <String, dynamic>{
      'status': instance.status,
      'in_reply_to_status_id': instance.inReplyToStatusId,
      'possibly_sensitive': instance.possiblySensitive,
      'lat': instance.latitude,
      'long': instance.longitude,
      'place_id': instance.placeId,
      'display_coordinates': instance.displayCoordinates,
      'trim_user': instance.trimUser,
      'media_ids': instance.mediaIds,
    };
