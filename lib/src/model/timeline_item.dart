import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/tweet_item.dart';

part 'timeline_item.g.dart';

@JsonSerializable()
class TimelineItem {
  TimelineItem(this.tweetItem, this.timelineItems);

  /// Represents a reference to a Tweet.
  @JsonKey(name:"tweet")
   final TweetItem tweetItem;

  /// The ordered set of Collection items.
  @JsonKey(name: "timeline")
  final List<TimelineItem> timelineItems;

  factory TimelineItem.fromJson(Map<String, dynamic> json) => _$TimelineItemFromJson(json);

  Map<String, dynamic> toJson() => _$TimelineItemToJson(this);
}
