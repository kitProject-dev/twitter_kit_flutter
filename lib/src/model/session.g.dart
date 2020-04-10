// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Session _$SessionFromJson(Map<String, dynamic> json) {
  return Session(
    json['secret'] as String,
    json['token'] as String,
    json['user_id'] as String,
    json['user_name'] as String,
  );
}

Map<String, dynamic> _$SessionToJson(Session instance) => <String, dynamic>{
      'secret': instance.secret,
      'token': instance.token,
      'user_id': instance.userId,
      'user_name': instance.username,
    };
