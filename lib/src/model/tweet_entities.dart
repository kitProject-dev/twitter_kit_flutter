import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/hashtag_entity.dart';
import 'package:twitter_kit/src/model/media_entity.dart';
import 'package:twitter_kit/src/model/mention_entity.dart';
import 'package:twitter_kit/src/model/symbol_entity.dart';
import 'package:twitter_kit/src/model/url_entity.dart';

part 'tweet_entities.g.dart';

@JsonSerializable()
class TweetEntities {
  TweetEntities(
      this.urls, this.userMentions, this.media, this.hashtags, this.symbols);

  static final TweetEntities empty =
      TweetEntities(null, null, null, null, null);

  /// Represents URLs included in the text of a Tweet or within textual fields of a user object.
  @JsonKey(name: "urls")
  final List<UrlEntity> urls;

  /// Represents other Twitter users mentioned in the text of the Tweet.
  @JsonKey(name: "user_mentions")
  final List<MentionEntity> userMentions;

  /// Represents media elements uploaded with the Tweet.
  @JsonKey(name: "media")
  final List<MediaEntity> media;

  /// Represents hashtags which have been parsed out of the Tweet text.
  @JsonKey(name: "hashtags")
  final List<HashtagEntity> hashtags;

  /// Represents symbols which have been parsed out of the Tweet text.
  @JsonKey(name: "symbols")
  final List<SymbolEntity> symbols;

  factory TweetEntities.fromJson(Map<String, dynamic> json) =>
      _$TweetEntitiesFromJson(json);

  Map<String, dynamic> toJson() => _$TweetEntitiesToJson(this);
}
