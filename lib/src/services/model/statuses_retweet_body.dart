import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/services/model/convert_form.dart';

part 'statuses_retweet_body.g.dart';

@JsonSerializable()
class StatusesRetweetBody extends RequestBody {
  StatusesRetweetBody({this.trimUser});

  @JsonKey(name: "trim_user")
  final bool trimUser;

  factory StatusesRetweetBody.fromJson(Map<String, dynamic> json) =>
      _$StatusesRetweetBodyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StatusesRetweetBodyToJson(this);
}
