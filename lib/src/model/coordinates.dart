import 'package:json_annotation/json_annotation.dart';

part 'coordinates.g.dart';

@JsonSerializable()
class Coordinates {
  Coordinates(this.coordinates, this.type);

  /// The longitude and latitude of the Tweet's location, as an collection in the form of
  /// [longitude, latitude].
  @JsonKey(name: "coordinates", defaultValue: <double>[])
  final List<double> coordinates;

  /// The type of data encoded in the coordinates property. This will be "Point" for Tweet
  /// coordinates fields.
  @JsonKey(name: "type")
  final String type;

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinatesToJson(this);
}
