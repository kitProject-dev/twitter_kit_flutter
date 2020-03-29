import 'package:json_annotation/json_annotation.dart';

part 'symbol_entity.g.dart';

@JsonSerializable()
class SymbolEntity {
  SymbolEntity(this.text);

  /// Name of the symbol, minus the leading '$' character.
  @JsonKey(name: "text")
  final String text;

  factory SymbolEntity.fromJson(Map<String, dynamic> json) =>
      _$SymbolEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SymbolEntityToJson(this);
}
