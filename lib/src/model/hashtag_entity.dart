import 'package:json_annotation/json_annotation.dart';

part 'hashtag_entity.g.dart';

@JsonSerializable()
class HashtagEntity {
  HashtagEntity(this.text);

  /// Name of the hashtag, minus the leading '#' character.
  @JsonKey(name: "text")
  final String text;

  factory HashtagEntity.fromJson(Map<String, dynamic> json) =>
      _$HashtagEntityFromJson(json);

  Map<String, dynamic> toJson() => _$HashtagEntityToJson(this);
}
