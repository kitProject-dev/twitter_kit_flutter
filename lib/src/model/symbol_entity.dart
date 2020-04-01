import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/entity.dart';

part 'symbol_entity.g.dart';

@JsonSerializable()
class SymbolEntity extends Entity {
  SymbolEntity(this.indices, this.text) : super(indices);

  @override
  final List<int> indices;

  /// Name of the symbol, minus the leading '$' character.
  @JsonKey(name: "text")
  final String text;

  factory SymbolEntity.fromJson(Map<String, dynamic> json) =>
      _$SymbolEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SymbolEntityToJson(this);
}
