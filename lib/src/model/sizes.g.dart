// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sizes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sizes _$SizesFromJson(Map<String, dynamic> json) {
  return Sizes(
    json['medium'] == null
        ? null
        : Size.fromJson(json['medium'] as Map<String, dynamic>),
    json['thumb'] == null
        ? null
        : Size.fromJson(json['thumb'] as Map<String, dynamic>),
    json['small'] == null
        ? null
        : Size.fromJson(json['small'] as Map<String, dynamic>),
    json['large'] == null
        ? null
        : Size.fromJson(json['large'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SizesToJson(Sizes instance) => <String, dynamic>{
      'medium': instance.medium,
      'thumb': instance.thumb,
      'small': instance.small,
      'large': instance.large,
    };
