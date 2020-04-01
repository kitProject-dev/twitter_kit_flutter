// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) {
  return Configuration(
    json['dm_text_character_limit'] as int,
    (json['non_username_paths'] as List)?.map((e) => e as String)?.toList(),
    json['photo_size_limit'] as int,
    json['photo_sizes'] == null
        ? null
        : Sizes.fromJson(json['photo_sizes'] as Map<String, dynamic>),
    json['short_url_length_https'] as int,
  );
}

Map<String, dynamic> _$ConfigurationToJson(Configuration instance) =>
    <String, dynamic>{
      'dm_text_character_limit': instance.dmTextCharacterLimit,
      'non_username_paths': instance.nonUsernamePaths,
      'photo_size_limit': instance.photoSizeLimit,
      'photo_sizes': instance.photoSizes,
      'short_url_length_https': instance.shortUrlLengthHttps,
    };
