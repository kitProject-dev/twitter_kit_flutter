import 'package:json_annotation/json_annotation.dart';

part 'session.g.dart';

@JsonSerializable()
class Session {
  Session(this.secret, this.token, this.userId, this.username);

  @JsonKey(name: "secret")
  final String secret;
  @JsonKey(name: "token")
  final String token;
  @JsonKey(name: "user_id")
  final String userId;
  @JsonKey(name: "user_name")
  final String username;

  factory Session.fromJson(Map<dynamic, dynamic> json) =>
      _$SessionFromJson(json.cast<String, dynamic>());

  Map<String, dynamic> toJson() => _$SessionToJson(this);
}
