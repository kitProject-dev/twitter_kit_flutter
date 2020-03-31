import 'package:json_annotation/json_annotation.dart';
import 'package:twitter_kit/src/model/tweet.dart';
import 'package:twitter_kit/src/model/user_entities.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User(
      this.contributorsEnabled,
      this.createdAt,
      this.defaultProfile,
      this.defaultProfileImage,
      this.description,
      this.email,
      this.entities,
      this.favouritesCount,
      this.followRequestSent,
      this.followersCount,
      this.friendsCount,
      this.geoEnabled,
      this.intid,
      this.idStr,
      this.isTranslator,
      this.lang,
      this.listedCount,
      this.location,
      this.name,
      this.profileBackgroundColor,
      this.profileBackgroundImageUrl,
      this.profileBackgroundImageUrlHttps,
      this.profileBackgroundTile,
      this.profileBannerUrl,
      this.profileImageUrl,
      this.profileImageUrlHttps,
      this.profileLinkColor,
      this.profileSidebarBorderColor,
      this.profileSidebarFillColor,
      this.profileTextColor,
      this.profileUseBackgroundImage,
      this.protectedUser,
      this.screenName,
      this.showAllInlineMedia,
      this.status,
      this.statusesCount,
      this.timeZone,
      this.url,
      this.utcOffset,
      this.verified,
      this.withheldInCountries,
      this.withheldScope);

  /// Indicates that the user has an account with "contributor mode" enabled, allowing for Tweets
  /// issued by the user to be co-authored by another account. Rarely true.
  @JsonKey(name: "contributors_enabled")
  final bool contributorsEnabled;

  /// The UTC datetime that the user account was created on Twitter.
  @JsonKey(name: "created_at")
  final String createdAt;

  /// When true, indicates that the user has not altered the theme or background of their user
  /// profile.
  @JsonKey(name: "default_profile")
  final bool defaultProfile;

  /// When true, indicates that the user has not uploaded their own avatar and a default egg avatar
  /// is used instead.
  @JsonKey(name: "default_profile_image")
  final bool defaultProfileImage;

  /// Nullable. The user-defined UTF-8 string describing their account.
  @JsonKey(name: "description")
  final String description;

  /// Nullable. The logged in user email address if available. Must have permission to access email
  /// address.
  @JsonKey(name: "email")
  final String email;

  /// Entities which have been parsed out of the url or description fields defined by the user.
  /// Read more about User Entities.
  @JsonKey(name: "entities")
  final UserEntities entities;

  /// The number of tweets this user has favorited in the account's lifetime. British spelling used
  /// in the field name for historical reasons.
  @JsonKey(name: "favourites_count")
  final int favouritesCount;

  /// Nullable. Perspectival. When true, indicates that the authenticating user has issued a follow
  /// request to this protected user account.
  @JsonKey(name: "follow_request_sent")
  final bool followRequestSent;

  /// The number of followers this account currently has. Under certain conditions of duress, this
  /// field will temporarily indicate "0."
  @JsonKey(name: "followers_count")
  final int followersCount;

  /// The number of users this account is following (AKA their "followings"). Under certain
  /// conditions of duress, this field will temporarily indicate "0."
  @JsonKey(name: "friends_count")
  final int friendsCount;

  /// When true, indicates that the user has enabled the possibility of geotagging their Tweets.
  /// This field must be true for the current user to attach geographic data when using
  /// POST statuses / update.
  @JsonKey(name: "geo_enabled")
  final bool geoEnabled;

  /// The integer representation of the unique identifier for this User. This number is greater
  /// than 53 bits and some programming languages may have difficulty/silent defects in
  /// interpreting it. Using a signed 64 bit integer for storing this identifier is safe. Use
  /// id_str for fetching the identifier to stay on the safe side. See Twitter IDs, JSON and
  /// Snowflake.
  @JsonKey(name: "id")
  final intid;

  /// The string representation of the unique identifier for this User. Implementations should use
  /// this rather than the large, possibly un-consumable integer in id
  @JsonKey(name: "id_str")
  final String idStr;

  /// When true, indicates that the user is a participant in Twitter's translator community.
  @JsonKey(name: "is_translator")
  final bool isTranslator;

  /// The BCP 47 code for the user's self-declared user interface language. May or may not have
  /// anything to do with the content of their Tweets.
  @JsonKey(name: "lang")
  final String lang;

  /// The number of  lists that this user is a member of.
  @JsonKey(name: "listed_count")
  final int listedCount;

  /// Nullable. The user-defined location for this account's profile. Not necessarily a location
  /// nor parseable. This field will occasionally be fuzzily interpreted by the Search service.
  @JsonKey(name: "location")
  final String location;

  /// The name of the user, as they've defined it. Not necessarily a person's name. Typically
  /// capped at 20 characters, but subject to change.
  @JsonKey(name: "name")
  final String name;

  /// The hexadecimal color chosen by the user for their background.
  @JsonKey(name: "profile_background_color")
  final String profileBackgroundColor;

  /// A HTTP-based URL pointing to the background image the user has uploaded for their profile.
  @JsonKey(name: "profile_background_image_url")
  final String profileBackgroundImageUrl;

  /// A HTTPS-based URL pointing to the background image the user has uploaded for their profile.
  @JsonKey(name: "profile_background_image_url_https")
  final String profileBackgroundImageUrlHttps;

  /// When true, indicates that the user's profile_background_image_url should be tiled when
  /// displayed.
  @JsonKey(name: "profile_background_tile")
  final bool profileBackgroundTile;

  /// The HTTPS-based URL pointing to the standard web representation of the user's uploaded
  /// profile banner. By adding a final path element of the URL, you can obtain different image
  /// sizes optimized for specific displays. In the future, an API method will be provided to serve
  /// these URLs so that you need not modify the original URL. For size variations, please see
  /// User Profile Images and Banners.
  @JsonKey(name: "profile_banner_url")
  final String profileBannerUrl;

  /// A HTTP-based URL pointing to the user's avatar image. See User Profile Images and Banners.
  @JsonKey(name: "profile_image_url")
  final String profileImageUrl;

  /// A HTTPS-based URL pointing to the user's avatar image.
  @JsonKey(name: "profile_image_url_https")
  final String profileImageUrlHttps;

  /// The hexadecimal color the user has chosen to display links with in their Twitter UI.
  @JsonKey(name: "profile_link_color")
  final String profileLinkColor;

  /// The hexadecimal color the user has chosen to display sidebar borders with in their Twitter
  /// UI.
  @JsonKey(name: "profile_sidebar_border_color")
  final String profileSidebarBorderColor;

  /// The hexadecimal color the user has chosen to display sidebar backgrounds with in their
  /// Twitter UI.
  @JsonKey(name: "profile_sidebar_fill_color")
  final String profileSidebarFillColor;

  /// The hexadecimal color the user has chosen to display text with in their Twitter UI.
  @JsonKey(name: "profile_text_color")
  final String profileTextColor;

  /// When true, indicates the user wants their uploaded background image to be used.
  @JsonKey(name: "profile_use_background_image")
  final bool profileUseBackgroundImage;

  /// When true, indicates that this user has chosen to protect their Tweets. See About  and
  /// Protected Tweets.
  @JsonKey(name: "protected")
  final bool protectedUser;

  /// The screen name, handle, or alias that this user identifies themselves with. screen_names are
  /// unique but subject to change. Use id_str as a user identifier whenever possible. Typically a
  /// maximum of 15 characters long, but some historical accounts may exist with longer names.
  @JsonKey(name: "screen_name")
  final String screenName;

  /// Indicates that the user would like to see media inline. Somewhat disused.
  @JsonKey(name: "show_all_inline_media")
  final bool showAllInlineMedia;

  /// Nullable. If possible, the user's most recent tweet or retweet. In some circumstances, this
  /// data cannot be provided and this field will be omitted, null, or empty. Perspectival
  /// attributes within tweets embedded within users cannot always be relied upon. See Why are
  /// embedded objects stale or inaccurate?.
  @JsonKey(name: "status")
  final Tweet status;

  /// The number of tweets (including retweets) issued by the user.
  @JsonKey(name: "statuses_count")
  final int statusesCount;

  /// Nullable. A string describing the Time Zone this user declares themselves within.
  @JsonKey(name: "time_zone")
  final String timeZone;

  /// Nullable. A URL provided by the user in association with their profile.
  @JsonKey(name: "url")
  final String url;

  /// Nullable. The offset from GMT/UTC in seconds.
  @JsonKey(name: "utc_offset")
  final int utcOffset;

  /// When true, indicates that the user has a verified account. See Verified Accounts.
  @JsonKey(name: "verified")
  final bool verified;

  /// When present, indicates a textual representation of the two-letter country codes this user is
  /// withheld from.
  @JsonKey(name: "withheld_in_countries", defaultValue: <String>[])
  final List<String> withheldInCountries;

  /// When present, indicates whether the content being withheld is the "status" or a "user."
  @JsonKey(name: "withheld_scope")
  final String withheldScope;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
