import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/bounding_box.dart';

part 'place.g.dart';

@JsonSerializable()
class Place {
  Place(this.attributes, this.boundingBox, this.country, this.countryCode,
      this.fullName, this.id, this.name, this.placeType, this.url);

  /// Place Attributes are metadata about places. An attribute is a key-value pair of arbitrary
  /// strings, but with some conventions.
  @JsonKey(name: "attributes")
  final Map<String, String> attributes;

  /// A bounding box of coordinates which encloses this place.
  @JsonKey(name: "bounding_box")
  final BoundingBox boundingBox;

  /// Name of the country containing this place.
  @JsonKey(name: "country")
  final String country;

  /// Shortened country code representing the country containing this place.
  @JsonKey(name: "country_code")
  final String countryCode;

  /// Full human-readable representation of the place's name.
  @JsonKey(name: "full_name")
  final String fullName;

  /// ID representing this place. Note that this is represented as a string, not an integer.
  @JsonKey(name: "id")
  final String id;

  /// Short human-readable representation of the place's name.
  @JsonKey(name: "name")
  final String name;

  /// The type of location represented by this place.
  @JsonKey(name: "place_type")
  final String placeType;

  /// URL representing the location of additional place metadata for this place.
  @JsonKey(name: "url")
  final String url;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceToJson(this);
}
