import 'package:json_annotation/json_annotation.dart';

part 'tweet_item.g.dart';

@JsonSerializable()
class TweetItem {
  TweetItem(this.id);

  /// A Tweet id.
  @JsonKey(name: "id")
  final String id;

  factory TweetItem.fromJson(Map<String, dynamic> json) =>
      _$TweetItemFromJson(json);

  Map<String, dynamic> toJson() => _$TweetItemToJson(this);
}
