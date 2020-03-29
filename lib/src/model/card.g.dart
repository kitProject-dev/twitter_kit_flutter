// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) {
  return Card(
    json['binding_values'] == null
        ? null
        : BindingValues.fromJson(
            json['binding_values'] as Map<String, dynamic>),
    json['name'] as String,
  );
}

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'binding_values': instance.bindingValues,
      'name': instance.name,
    };
