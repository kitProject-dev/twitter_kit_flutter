import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/services/model/convert_form.dart';

part 'favorite_destroy_body.g.dart';

@JsonSerializable()
class FavoriteDestroyBody extends RequestBody {
  FavoriteDestroyBody(this.id, {this.includeEntities});

  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "include_entities")
  final bool includeEntities;

  factory FavoriteDestroyBody.fromJson(Map<String, dynamic> json) =>
      _$FavoriteDestroyBodyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FavoriteDestroyBodyToJson(this);
}
