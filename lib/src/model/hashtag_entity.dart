import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/entity.dart';

part 'hashtag_entity.g.dart';

@JsonSerializable()
class HashtagEntity extends Entity {
  HashtagEntity(this.indices, this.text) : super(indices);

  @override
  final List<int> indices;

  /// Name of the hashtag, minus the leading '#' character.
  @JsonKey(name: "text")
  final String text;

  factory HashtagEntity.fromJson(Map<String, dynamic> json) =>
      _$HashtagEntityFromJson(json);

  Map<String, dynamic> toJson() => _$HashtagEntityToJson(this);
}
