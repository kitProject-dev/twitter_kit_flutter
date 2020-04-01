// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitter_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TwitterCollection _$TwitterCollectionFromJson(Map<String, dynamic> json) {
  return TwitterCollection(
    json['objects'] == null
        ? null
        : Content.fromJson(json['objects'] as Map<String, dynamic>),
    json['response'] == null
        ? null
        : Metadata.fromJson(json['response'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TwitterCollectionToJson(TwitterCollection instance) =>
    <String, dynamic>{
      'objects': instance.contents,
      'response': instance.metadata,
    };
