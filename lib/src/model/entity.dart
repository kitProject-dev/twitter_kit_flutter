import 'package:json_annotation/json_annotation.dart';

part 'entity.g.dart';

@JsonSerializable()
class Entity {
  Entity(this.indices);

  static const int _START_INDEX = 0;
  static const int _END_INDEX = 1;

  /// An array of integers indicating the offsets.
  @JsonKey(name: "indices")
  final List<int> indices;

  int getStart() {
    return indices[_START_INDEX];
  }

  int getEnd() {
    return indices[_END_INDEX];
  }

  factory Entity.fromJson(Map<String, dynamic> json) => _$EntityFromJson(json);

  Map<String, dynamic> toJson() => _$EntityToJson(this);
}
