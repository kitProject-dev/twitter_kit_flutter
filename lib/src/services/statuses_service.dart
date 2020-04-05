import 'package:chopper/chopper.dart';
import 'package:twitter_kit/src/model/tweet.dart';
import 'package:twitter_kit/src/services/model/convert_form.dart';
import 'package:twitter_kit/twitter_kit.dart';

part "statuses_service.chopper.dart";

@ChopperApi(baseUrl: "/statuses")
abstract class StatusesService extends ChopperService {
  static StatusesService create([ChopperClient client]) =>
      _$StatusesService(client);

  /// Returns a single Tweet, specified by the id parameter. The Tweet's author will also be
  /// embedded within the Tweet.
  ///
  /// @param id (required) The numerical ID of the desired Tweet.
  /// @param trimUser (optional) When set to either true, t or 1, each Tweet returned in a timeline
  ///                 will include a user object including only the status authors numerical ID.
  ///                 Omit this parameter to receive the complete user object.
  /// @param includeMyRetweet (optional) When set to either true, t or 1, any Tweets returned that
  ///                         have been retweeted by the authenticating user will include an
  ///                         additional current_user_retweet node, containing the ID of the source
  ///                         status for the retweet.
  /// @param includeEntities (optional) The entities node will be disincluded when set to false.
  @FactoryConverter(request: convertForm)
  @Get(
      path: '/show.json?' +
          "tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13" +
          "&id={id}&include_my_retweet={include_my_retweet}&include_entities={include_entities}",
      headers: {contentTypeKey: formEncodedHeaders})
  Future<Response<Tweet>> show(@Body() StatusesShowBody showBody);

  /// Updates the authenticating user's current status, also known as tweeting.
  /// <p>
  /// For each update attempt, the update text is compared with the authenticating user's recent
  /// tweets. Any attempt that would result in duplication will be blocked, resulting in a 403
  /// error. Therefore, a user cannot submit the same status twice in a row.
  /// <p>
  /// While not rate limited by the API a user is limited in the number of tweets they can create
  /// at a time. If the number of updates posted by the user reaches the current allowed limit this
  /// method will return an HTTP 403 error.
  ///
  /// @param status (required) The text of your status update, typically up to 140 characters. URL
  ///               encode as necessary. [node:840,title="t.co link wrapping"] may effect character
  ///               counts. There are some special commands in this field to be aware of. For
  ///               instance, preceding a message with "D " or "M " and following it with a screen
  ///               name can create a direct message to that user if the relationship allows for
  ///               it.
  /// @param inReplyToStatusId (optional) The ID of an existing status that the update is in reply
  ///                          to. Note:: This parameter will be ignored unless the author of the
  ///                          Tweet this parameter references is mentioned within the status text.
  ///                          Therefore, you must include @username, where username is the author
  ///                          of the referenced Tweet, within the update.
  /// @param possiblySensitive (optional) If you upload Tweet media that might be considered
  ///                          sensitive content such as nudity, violence, or medical procedures,
  ///                          you should set this value to true. See Media setting and best
  ///                          practices for more context. Defaults to false.
  /// @param latitude (optional) The latitude of the location this Tweet refers to. This parameter
  ///                 will be ignored unless it is inside the range -90.0 to +90.0 (North is
  ///                 positive) inclusive. It will also be ignored if there isn't a corresponding
  ///                 long parameter.
  /// @param longitude (optional) The longitude of the location this Tweet refers to. The valid
  ///                  ranges for longitude is -180.0 to +180.0 (East is positive) inclusive. This
  ///                  parameter will be ignored if outside that range, if it is not a number, if
  ///                  geo_enabled is disabled, or if there not a corresponding lat parameter.
  /// @param placeId (optional) A place in the world. These IDs can be retrieved from [node:29].
  /// @param displayCoordinates (optional) Whether or not to put a pin on the exact coordinates a
  ///                           Tweet has been sent from.
  /// @param trimUser (optional) When set to either true, t or 1, each Tweet returned in a timeline
  ///                 will include a user object including only the status authors numerical ID.
  ///                 Omit this parameter to receive the complete user object.
  /// @param mediaIds A comma separated media ids as a string for uploaded media to associate
  ///                 with a Tweet. You may include up to 4 photos in a Tweet.
  @FactoryConverter(request: convertForm)
  @Post(
      path: "/update.json?" +
          "tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13",
      headers: {contentTypeKey: formEncodedHeaders})
  Future<Response<Tweet>> update(@Body() StatusesUpdateBody updateBody);
}
