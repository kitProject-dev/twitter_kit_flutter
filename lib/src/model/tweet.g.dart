// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tweet _$TweetFromJson(Map<String, dynamic> json) {
  return Tweet(
    json['coordinates'] == null
        ? null
        : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
    json['created_at'] as String,
    json['current_user_retweet'],
    json['entities'] == null
        ? null
        : TweetEntities.fromJson(json['entities'] as Map<String, dynamic>),
    json['extended_entities'] == null
        ? null
        : TweetEntities.fromJson(
            json['extended_entities'] as Map<String, dynamic>),
    json['favorite_count'] as int,
    json['favorited'] as bool,
    json['filter_level'] as String,
    json['id'] as int,
    json['id_str'] as String,
    json['in_reply_to_screen_name'] as String,
    json['in_reply_to_status_id'] as int,
    json['in_reply_to_status_id_str'] as String,
    json['in_reply_to_user_id'] as int,
    json['in_reply_to_user_id_str'] as String,
    json['lang'] as String,
    json['place'] == null
        ? null
        : Place.fromJson(json['place'] as Map<String, dynamic>),
    json['possibly_sensitive'] as bool,
    json['scopes'],
    json['quoted_status_id'] as int,
    json['quoted_status_id_str'] as String,
    json['quoted_status'] == null
        ? null
        : Tweet.fromJson(json['quoted_status'] as Map<String, dynamic>),
    json['retweet_count'] as int,
    json['retweeted'] as bool,
    json['retweeted_status'] == null
        ? null
        : Tweet.fromJson(json['retweeted_status'] as Map<String, dynamic>),
    json['source'] as String,
    json['text'] as String,
    json['full_text'] as String,
    (json['display_text_range'] as List)?.map((e) => e as int)?.toList() ?? [],
    json['truncated'] as bool,
    json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    json['withheld_copyright'] as bool,
    (json['withheld_in_countries'] as List)
            ?.map((e) => e as String)
            ?.toList() ??
        [],
    json['withheld_scope'] as String,
    json['card'] == null
        ? null
        : Card.fromJson(json['card'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TweetToJson(Tweet instance) => <String, dynamic>{
      'coordinates': instance.coordinates,
      'created_at': instance.createdAt,
      'current_user_retweet': instance.currentUserRetweet,
      'entities': instance.entities,
      'extended_entities': instance.extendedEntities,
      'favorite_count': instance.favoriteCount,
      'favorited': instance.favorited,
      'filter_level': instance.filterLevel,
      'id': instance.id,
      'id_str': instance.idStr,
      'in_reply_to_screen_name': instance.inReplyToScreenName,
      'in_reply_to_status_id': instance.inReplyToStatusId,
      'in_reply_to_status_id_str': instance.inReplyToStatusIdStr,
      'in_reply_to_user_id': instance.inReplyToUserId,
      'in_reply_to_user_id_str': instance.inReplyToUserIdStr,
      'lang': instance.lang,
      'place': instance.place,
      'possibly_sensitive': instance.possiblySensitive,
      'scopes': instance.scopes,
      'quoted_status_id': instance.quotedStatusId,
      'quoted_status_id_str': instance.quotedStatusIdStr,
      'quoted_status': instance.quotedStatus,
      'retweet_count': instance.retweetCount,
      'retweeted': instance.retweeted,
      'retweeted_status': instance.retweetedStatus,
      'source': instance.source,
      'text': instance.text,
      'full_text': instance.fullText,
      'display_text_range': instance.displayTextRange,
      'truncated': instance.truncated,
      'user': instance.user,
      'withheld_copyright': instance.withheldCopyright,
      'withheld_in_countries': instance.withheldInCountries,
      'withheld_scope': instance.withheldScope,
      'card': instance.card,
    };
