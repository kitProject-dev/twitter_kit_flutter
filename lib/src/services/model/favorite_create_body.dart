import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/services/model/convert_form.dart';

part 'favorite_create_body.g.dart';

@JsonSerializable()
class FavoriteCreateBody extends RequestBody {
  FavoriteCreateBody(this.id, {this.includeEntities});

  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "include_entities")
  final bool includeEntities;

  factory FavoriteCreateBody.fromJson(Map<String, dynamic> json) =>
      _$FavoriteCreateBodyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FavoriteCreateBodyToJson(this);
}
