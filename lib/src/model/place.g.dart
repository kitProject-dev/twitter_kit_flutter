// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return Place(
    (json['attributes'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    json['bounding_box'] == null
        ? null
        : BoundingBox.fromJson(json['bounding_box'] as Map<String, dynamic>),
    json['country'] as String,
    json['country_code'] as String,
    json['full_name'] as String,
    json['id'] as String,
    json['name'] as String,
    json['place_type'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$PlaceToJson(Place instance) => <String, dynamic>{
      'attributes': instance.attributes,
      'bounding_box': instance.boundingBox,
      'country': instance.country,
      'country_code': instance.countryCode,
      'full_name': instance.fullName,
      'id': instance.id,
      'name': instance.name,
      'place_type': instance.placeType,
      'url': instance.url,
    };
