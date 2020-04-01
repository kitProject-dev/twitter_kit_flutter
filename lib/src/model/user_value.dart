import 'package:json_annotation/json_annotation.dart';

part 'user_value.g.dart';

@JsonSerializable()
class UserValue {
  UserValue(this.idStr);

  @JsonKey(name: "id_str")
  final String idStr;

  factory UserValue.fromJson(Map<String, dynamic> json) =>
      _$UserValueFromJson(json);

  Map<String, dynamic> toJson() => _$UserValueToJson(this);
}
