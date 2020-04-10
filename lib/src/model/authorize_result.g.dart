// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorize_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorizeResult _$AuthorizeResultFromJson(Map<String, dynamic> json) {
  return AuthorizeResult(
    json['status'] as String,
    json['session'] == null
        ? null
        : Session.fromJson(json['session'] as Map<dynamic, dynamic>),
    json['error_message'] as String,
  );
}

Map<String, dynamic> _$AuthorizeResultToJson(AuthorizeResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'session': instance.session,
      'error_message': instance.errorMessage,
    };
