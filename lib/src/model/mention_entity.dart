import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/entity.dart';

part 'mention_entity.g.dart';

@JsonSerializable()
class MentionEntity extends Entity {
  MentionEntity(this.indices, this.id, this.idStr, this.name, this.screenName)
      : super(indices);

  @override
  final List<int> indices;

  /// ID of the mentioned user, as an integer.
  @JsonKey(name: "id")
  final int id;

  /// ID of the mentioned user, as a string.
  @JsonKey(name: "id_str")
  final String idStr;

  /// Display name of the referenced user.
  @JsonKey(name: "name")
  final String name;

  /// Screen name of the referenced user.
  @JsonKey(name: "screen_name")
  final String screenName;

  factory MentionEntity.fromJson(Map<String, dynamic> json) =>
      _$MentionEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MentionEntityToJson(this);
}
