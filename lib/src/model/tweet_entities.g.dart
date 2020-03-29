// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetEntities _$TweetEntitiesFromJson(Map<String, dynamic> json) {
  return TweetEntities(
    (json['urls'] as List)
        ?.map((e) =>
            e == null ? null : UrlEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['user_mentions'] as List)
        ?.map((e) => e == null
            ? null
            : MentionEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['media'] as List)
        ?.map((e) =>
            e == null ? null : MediaEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['hashtags'] as List)
        ?.map((e) => e == null
            ? null
            : HashtagEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['symbols'] as List)
        ?.map((e) =>
            e == null ? null : SymbolEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TweetEntitiesToJson(TweetEntities instance) =>
    <String, dynamic>{
      'urls': instance.urls,
      'user_mentions': instance.userMentions,
      'media': instance.media,
      'hashtags': instance.hashtags,
      'symbols': instance.symbols,
    };
