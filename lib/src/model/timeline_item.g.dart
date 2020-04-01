// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimelineItem _$TimelineItemFromJson(Map<String, dynamic> json) {
  return TimelineItem(
    json['tweet'] == null
        ? null
        : TweetItem.fromJson(json['tweet'] as Map<String, dynamic>),
    (json['timeline'] as List)
        ?.map((e) =>
            e == null ? null : TimelineItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TimelineItemToJson(TimelineItem instance) =>
    <String, dynamic>{
      'tweet': instance.tweetItem,
      'timeline': instance.timelineItems,
    };
