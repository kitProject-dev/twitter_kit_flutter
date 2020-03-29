import 'package:json_annotation/json_annotation.dart';

part 'binding_values.g.dart';

@JsonSerializable()
class BindingValues {
  BindingValues();

  factory BindingValues.fromJson(Map<String, dynamic> json) =>
      _$BindingValuesFromJson(json);

  Map<String, dynamic> toJson() => _$BindingValuesToJson(this);
}
