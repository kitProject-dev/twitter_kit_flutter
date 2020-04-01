// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Position _$PositionFromJson(Map<String, dynamic> json) {
  return Position(
    json['min_position'] as String,
    json['max_position'] as String,
  );
}

Map<String, dynamic> _$PositionToJson(Position instance) => <String, dynamic>{
      'min_position': instance.minPosition,
      'max_position': instance.maxPosition,
    };
