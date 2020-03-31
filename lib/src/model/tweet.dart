import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/card.dart';
import 'package:twitter_kit/src/model/coordinates.dart';
import 'package:twitter_kit/src/model/place.dart';
import 'package:twitter_kit/src/model/tweet_entities.dart';
import 'package:twitter_kit/src/model/user.dart';

part 'tweet.g.dart';

@JsonSerializable()
class Tweet {
  Tweet(
      this.coordinates,
      this.createdAt,
      this.currentUserRetweet,
      this.entities,
      this.extendedEntities,
      this.favoriteCount,
      this.favorited,
      this.filterLevel,
      this.id,
      this.idStr,
      this.inReplyToScreenName,
      this.inReplyToStatusId,
      this.inReplyToStatusIdStr,
      this.inReplyToUserId,
      this.inReplyToUserIdStr,
      this.lang,
      this.place,
      this.possiblySensitive,
      this.scopes,
      this.quotedStatusId,
      this.quotedStatusIdStr,
      this.quotedStatus,
      this.retweetCount,
      this.retweeted,
      this.retweetedStatus,
      this.source,
      this.text,
      this.fullText,
      this.displayTextRange,
      this.truncated,
      this.user,
      this.withheldCopyright,
      this.withheldInCountries,
      this.withheldScope,
      this.card);

  /// Nullable. Represents the geographic location of this Tweet as reported by the user or client
  /// application. The inner coordinates array is formatted as geoJSON (longitude first,
  /// then latitude).
  @JsonKey(name: "coordinates")
  final Coordinates coordinates;

  /// UTC time when this Tweet was created.
  @JsonKey(name: "created_at")
  final String createdAt;

  /// Perspectival. Only surfaces on methods supporting the include_my_retweet parameter, when set
  /// to true. Details the Tweet ID of the user's own retweet (if existent) of this Tweet.
  @JsonKey(name: "current_user_retweet")
  final Object currentUserRetweet;

  /// Entities which have been parsed out of the text of the Tweet.
  @JsonKey(name: "entities")
  final TweetEntities entities;

  /// Additional entities such as multi photos, animated gifs and video.
  @JsonKey(name: "extended_entities")
  final TweetEntities extendedEntities;

  /// Nullable. Indicates approximately how many times this Tweet has been "favorited" by Twitter
  /// users.
  @JsonKey(name: "favorite_count")
  final int favoriteCount;

  /// Nullable. Perspectival. Indicates whether this Tweet has been favorited by the authenticating
  /// user.
  @JsonKey(name: "favorited")
  final bool favorited;

  /// Indicates the maximum value of the filter_level parameter which may be used and still stream
  /// this Tweet. So a value of medium will be streamed on none, low, and medium streams.
  @JsonKey(name: "filter_level")
  final String filterLevel;

  /// The integer representation of the unique identifier for this Tweet. This number is greater
  /// than 53 bits and some programming languages may have difficulty/silent defects in
  /// interpreting it. Using a signed 64 bit integer for storing this identifier is safe. Use
  /// id_str for fetching the identifier to stay on the safe side. See Twitter IDs, JSON and
  /// Snowflake.
  @JsonKey(name: "id")
  final int id;

  /// The string representation of the unique identifier for this Tweet. Implementations should use
  /// this rather than the large integer in id
  @JsonKey(name: "id_str")
  final String idStr;

  /// Nullable. If the represented Tweet is a reply, this field will contain the screen name of
  /// the original Tweet's author.
  @JsonKey(name: "in_reply_to_screen_name")
  final String inReplyToScreenName;

  /// Nullable. If the represented Tweet is a reply, this field will contain the integer
  /// representation of the original Tweet's ID.
  @JsonKey(name: "in_reply_to_status_id")
  final int inReplyToStatusId;

  /// Nullable. If the represented Tweet is a reply, this field will contain the string
  /// representation of the original Tweet's ID.
  @JsonKey(name: "in_reply_to_status_id_str")
  final String inReplyToStatusIdStr;

  /// Nullable. If the represented Tweet is a reply, this field will contain the integer
  /// representation of the original Tweet's author ID. This will not necessarily always be the
  /// user directly mentioned in the Tweet.
  @JsonKey(name: "in_reply_to_user_id")
  final int inReplyToUserId;

  /// Nullable. If the represented Tweet is a reply, this field will contain the string
  /// representation of the original Tweet's author ID. This will not necessarily always be the
  /// user directly mentioned in the Tweet.
  @JsonKey(name: "in_reply_to_user_id_str")
  final String inReplyToUserIdStr;

  /// Nullable. When present, indicates a BCP 47 language identifier corresponding to the
  /// machine-detected language of the Tweet text, or "und" if no language could be detected.
  @JsonKey(name: "lang")
  final String lang;

  /// Nullable. When present, indicates that the tweet is associated (but not necessarily
  /// originating from) a Place.
  @JsonKey(name: "place")
  final Place place;

  /// Nullable. This field only surfaces when a tweet contains a link. The meaning of the field
  /// doesn't pertain to the tweet content itself, but instead it is an indicator that the URL
  /// contained in the tweet may contain content or media identified as sensitive content.
  @JsonKey(name: "possibly_sensitive")
  final bool possiblySensitive;

  /// A set of key-value pairs indicating the intended contextual delivery of the containing Tweet.
  /// Currently used by Twitter's Promoted Products.
  @JsonKey(name: "scopes")
  final Object scopes;

  /// This field only surfaces when the Tweet is a quote Tweet. This field contains the
  /// integer value Tweet ID of the quoted Tweet.
  @JsonKey(name: "quoted_status_id")
  final int quotedStatusId;

  /// This field only surfaces when the Tweet is a quote Tweet. This is the string representation
  /// Tweet ID of the quoted Tweet.
  @JsonKey(name: "quoted_status_id_str")
  final String quotedStatusIdStr;

  /// This field only surfaces when the Tweet is a quote Tweet. This attribute contains the
  /// Tweet object of the original Tweet that was quoted.
  @JsonKey(name: "quoted_status")
  final Tweet quotedStatus;

  /// Number of times this Tweet has been retweeted. This field is no longer capped at 99 and will
  /// not turn into a String for "100+"
  @JsonKey(name: "retweet_count")
  final int retweetCount;

  /// Perspectival. Indicates whether this Tweet has been retweeted by the authenticating user.
  @JsonKey(name: "retweeted")
  final bool retweeted;

  /// Users can amplify the broadcast of tweets authored by other users by retweeting. Retweets can
  /// be distinguished from typical Tweets by the existence of a retweeted_status attribute. This
  /// attribute contains a representation of the original Tweet that was retweeted. Note that
  /// retweets of retweets do not show representations of the intermediary retweet, but only the
  /// original tweet. (Users can also unretweet a retweet they created by deleting their retweet.)
  @JsonKey(name: "retweeted_status")
  final Tweet retweetedStatus;

  /// Utility used to post the Tweet, as an HTML-formatted string. Tweets from the Twitter website
  /// have a source value of web.
  @JsonKey(name: "source")
  final String source;

  /// The actual UTF-8 text of the status update. See twitter-text for details on what is currently
  /// considered valid characters.
  @JsonKey(name: "text")
  final String text;

  /// The actual UTF-8 text of the status update. See twitter-text for details on what is currently
  /// considered valid characters.
  @JsonKey(name: "full_text")
  final String fullText;

  /// An array of two unicode code point indices, identifying the inclusive start and exclusive end
  /// of the displayable content of the Tweet.
  @JsonKey(name: "display_text_range", defaultValue: <int>[])
  final List<int> displayTextRange;

  /// Indicates whether the value of the text parameter was truncated, for example, as a result of
  /// a retweet exceeding the 140 character Tweet length. Truncated text will end in ellipsis, like
  /// this ... Since Twitter now rejects long Tweets vs truncating them, the large majority of
  /// Tweets will have this set to false.
  /// Note that while native retweets may have their toplevel text property shortened, the original
  /// text will be available under the retweeted_status object and the truncated parameter will be
  /// set to the value of the original status (in most cases, false).
  @JsonKey(name: "truncated")
  final bool truncated;

  /// The user who posted this Tweet. Perspectival attributes embedded within this object are
  /// unreliable. See Why are embedded objects stale or inaccurate?.
  @JsonKey(name: "user")
  final User user;

  /// When present and set to "true", it indicates that this piece of content has been withheld due
  /// to a DMCA complaint.
  @JsonKey(name: "withheld_copyright")
  final bool withheldCopyright;

  /// When present, indicates a list of uppercase two-letter country codes this content is withheld
  /// from. Twitter supports the following non-country values for this field:
  /// "XX" - Content is withheld in all countries
  /// "XY" - Content is withheld due to a DMCA request.
  @JsonKey(name: "withheld_in_countries", defaultValue: <String>[])
  final List<String> withheldInCountries;

  /// When present, indicates whether the content being withheld is the "status" or a "user."
  @JsonKey(name: "withheld_scope")
  final String withheldScope;

  /// Nullable. Card data used to attach rich photos, videos and media experience to Tweets.
  @JsonKey(name: "card")
  final Card card;

  factory Tweet.fromJson(Map<String, dynamic> json) => _$TweetFromJson(json);

  Map<String, dynamic> toJson() => _$TweetToJson(this);
}
