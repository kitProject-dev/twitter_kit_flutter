import 'package:json_annotation/json_annotation.dart';

part 'bounding_box.g.dart';

@JsonSerializable()
class BoundingBox {
  BoundingBox(this.coordinates, this.type);

  /// A series of longitude and latitude points, defining a box which will contain the Place
  /// entity this bounding box is related to. Each point is an array in the form of
  /// [longitude, latitude]. Points are grouped into an array per bounding box. Bounding box
  /// arrays are wrapped in one additional array to be compatible with the polygon notation.
  @JsonKey(name: "coordinates")
  final List<List<List<double>>> coordinates;

  /// The type of data encoded in the coordinates property. This will be "Polygon" for bounding
  /// boxes.
  @JsonKey(name: "type")
  final String type;

  factory BoundingBox.fromJson(Map<String, dynamic> json) =>
      _$BoundingBoxFromJson(json);

  Map<String, dynamic> toJson() => _$BoundingBoxToJson(this);
}
