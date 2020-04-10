import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/twitter_kit.dart';

part 'authorize_result.g.dart';

@JsonSerializable()
class AuthorizeResult {
  AuthorizeResult(this.status, this.session, this.errorMessage);

  static const RESULT_STATUS_LOGGED_IN = "loggedIn";
  static const RESULT_STATUS_ERROR = "error";

  @JsonKey(name: "status")
  final String status;

  @JsonKey(name: "session")
  final Session session;

  @JsonKey(name: "error_message")
  final String errorMessage;

  factory AuthorizeResult.fromJson(Map<dynamic, dynamic> json) =>
      _$AuthorizeResultFromJson(json.cast<String, dynamic>());

  Map<String, dynamic> toJson() => _$AuthorizeResultToJson(this);
}
