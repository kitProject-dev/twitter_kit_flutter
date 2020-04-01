import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/tweet.dart';
import 'package:twitter_kit/src/model/user.dart';

part 'content.g.dart';

@JsonSerializable()
class Content {
  Content(this.tweetMap, this.userMap);

  /// Represents the mapping from string Tweet ids to user-trimmed Tweets.
  @JsonKey(name: "tweets")
  final Map<int, Tweet> tweetMap;

  /// Represents the mapping from string user ids to Users who authored Tweets or Timelines.
  @JsonKey(name: "users")
  final Map<int, User> userMap;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);
}
