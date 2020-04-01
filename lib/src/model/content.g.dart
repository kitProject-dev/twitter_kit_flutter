// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Content _$ContentFromJson(Map<String, dynamic> json) {
  return Content(
    (json['tweets'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k),
          e == null ? null : Tweet.fromJson(e as Map<String, dynamic>)),
    ),
    (json['users'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k),
          e == null ? null : User.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'tweets': instance.tweetMap?.map((k, e) => MapEntry(k.toString(), e)),
      'users': instance.userMap?.map((k, e) => MapEntry(k.toString(), e)),
    };
