import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/url_entity.dart';

part 'url_entities.g.dart';

@JsonSerializable()
class UrlEntities {
  UrlEntities(this.urls);

  @JsonKey(name: "urls")
  final List<UrlEntity> urls;

  factory UrlEntities.fromJson(Map<String, dynamic> json) =>
      _$UrlEntitiesFromJson(json);

  Map<String, dynamic> toJson() => _$UrlEntitiesToJson(this);
}
