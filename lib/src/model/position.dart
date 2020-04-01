import 'package:json_annotation/json_annotation.dart';

part 'position.g.dart';

@JsonSerializable()
class Position {
  Position(this.minPosition, this.maxPosition);

  /// The exclusive minimum position value of the results (positions will be greater than
  /// this value).
  @JsonKey(name: "min_position")
  final String minPosition;

  /// The inclusive maximum position value of the results (positions will be less than or
  /// equal to this value).
  @JsonKey(name: "max_position")
  final String maxPosition;

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);

  Map<String, dynamic> toJson() => _$PositionToJson(this);
}
