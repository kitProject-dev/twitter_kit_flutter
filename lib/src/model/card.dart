import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/binding_values.dart';

part 'card.g.dart';

@JsonSerializable()
class Card {
  Card(this.bindingValues, this.name);

  @JsonKey(name: "binding_values")
  final BindingValues bindingValues;

  @JsonKey(name: "name")
  final String name;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  Map<String, dynamic> toJson() => _$CardToJson(this);
}
