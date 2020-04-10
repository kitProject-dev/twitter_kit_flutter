import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/services/model/convert_form.dart';

part 'statuses_destroy_body.g.dart';

@JsonSerializable()
class StatusesDestroyBody extends RequestBody {
  StatusesDestroyBody({this.trimUser});

  @JsonKey(name: "trim_user")
  final bool trimUser;

  factory StatusesDestroyBody.fromJson(Map<String, dynamic> json) =>
      _$StatusesDestroyBodyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StatusesDestroyBodyToJson(this);
}
