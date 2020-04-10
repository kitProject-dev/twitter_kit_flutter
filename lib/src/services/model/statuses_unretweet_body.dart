import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/services/model/convert_form.dart';

part 'statuses_unretweet_body.g.dart';

@JsonSerializable()
class StatusesUnretweetBody extends RequestBody {
  StatusesUnretweetBody({this.trimUser});

  @JsonKey(name: "trim_user")
  final bool trimUser;

  factory StatusesUnretweetBody.fromJson(Map<String, dynamic> json) =>
      _$StatusesUnretweetBodyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StatusesUnretweetBodyToJson(this);
}
