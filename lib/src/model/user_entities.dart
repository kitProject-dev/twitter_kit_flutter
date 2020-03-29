import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/url_entities.dart';

part 'user_entities.g.dart';

@JsonSerializable()
class UserEntities {
  UserEntities(this.url, this.description);

  @JsonKey(name: "url")
  final UrlEntities url;

  @JsonKey(name: "description")
  final UrlEntities description;

  factory UserEntities.fromJson(Map<String, dynamic> json) =>
      _$UserEntitiesFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntitiesToJson(this);
}
