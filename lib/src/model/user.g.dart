// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['contributors_enabled'] as bool,
    json['created_at'] as String,
    json['default_profile'] as bool,
    json['default_profile_image'] as bool,
    json['description'] as String,
    json['email'] as String,
    json['entities'] == null
        ? null
        : UserEntities.fromJson(json['entities'] as Map<String, dynamic>),
    json['favourites_count'] as int,
    json['follow_request_sent'] as bool,
    json['followers_count'] as int,
    json['friends_count'] as int,
    json['geo_enabled'] as bool,
    json['id'],
    json['id_str'] as String,
    json['is_translator'] as bool,
    json['lang'] as String,
    json['listed_count'] as int,
    json['location'] as String,
    json['name'] as String,
    json['profile_background_color'] as String,
    json['profile_background_image_url'] as String,
    json['profile_background_image_url_https'] as String,
    json['profile_background_tile'] as bool,
    json['profile_banner_url'] as String,
    json['profile_image_url'] as String,
    json['profile_image_url_https'] as String,
    json['profile_link_color'] as String,
    json['profile_sidebar_border_color'] as String,
    json['profile_sidebar_fill_color'] as String,
    json['profile_text_color'] as String,
    json['profile_use_background_image'] as bool,
    json['protected'] as bool,
    json['screen_name'] as String,
    json['show_all_inline_media'] as bool,
    json['status'] == null
        ? null
        : Tweet.fromJson(json['status'] as Map<String, dynamic>),
    json['statuses_count'] as int,
    json['time_zone'] as String,
    json['url'] as String,
    json['utc_offset'] as int,
    json['verified'] as bool,
    (json['withheld_in_countries'] as List)
            ?.map((e) => e as String)
            ?.toList() ??
        [],
    json['withheld_scope'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'contributors_enabled': instance.contributorsEnabled,
      'created_at': instance.createdAt,
      'default_profile': instance.defaultProfile,
      'default_profile_image': instance.defaultProfileImage,
      'description': instance.description,
      'email': instance.email,
      'entities': instance.entities,
      'favourites_count': instance.favouritesCount,
      'follow_request_sent': instance.followRequestSent,
      'followers_count': instance.followersCount,
      'friends_count': instance.friendsCount,
      'geo_enabled': instance.geoEnabled,
      'id': instance.intid,
      'id_str': instance.idStr,
      'is_translator': instance.isTranslator,
      'lang': instance.lang,
      'listed_count': instance.listedCount,
      'location': instance.location,
      'name': instance.name,
      'profile_background_color': instance.profileBackgroundColor,
      'profile_background_image_url': instance.profileBackgroundImageUrl,
      'profile_background_image_url_https':
          instance.profileBackgroundImageUrlHttps,
      'profile_background_tile': instance.profileBackgroundTile,
      'profile_banner_url': instance.profileBannerUrl,
      'profile_image_url': instance.profileImageUrl,
      'profile_image_url_https': instance.profileImageUrlHttps,
      'profile_link_color': instance.profileLinkColor,
      'profile_sidebar_border_color': instance.profileSidebarBorderColor,
      'profile_sidebar_fill_color': instance.profileSidebarFillColor,
      'profile_text_color': instance.profileTextColor,
      'profile_use_background_image': instance.profileUseBackgroundImage,
      'protected': instance.protectedUser,
      'screen_name': instance.screenName,
      'show_all_inline_media': instance.showAllInlineMedia,
      'status': instance.status,
      'statuses_count': instance.statusesCount,
      'time_zone': instance.timeZone,
      'url': instance.url,
      'utc_offset': instance.utcOffset,
      'verified': instance.verified,
      'withheld_in_countries': instance.withheldInCountries,
      'withheld_scope': instance.withheldScope,
    };
