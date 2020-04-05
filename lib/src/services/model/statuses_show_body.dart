import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/services/model/convert_form.dart';

part 'statuses_show_body.g.dart';

@JsonSerializable()
class StatusesShowBody extends RequestBody {
  StatusesShowBody(this.id,
      {this.trimUser, this.includeMyRetweet, this.includeEntities});

  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "trimUser")
  final bool trimUser;

  @JsonKey(name: "include_my_retweet")
  final bool includeMyRetweet;

  @JsonKey(name: "include_entities")
  final bool includeEntities;

  factory StatusesShowBody.fromJson(Map<String, dynamic> json) =>
      _$StatusesShowBodyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StatusesShowBodyToJson(this);
}
