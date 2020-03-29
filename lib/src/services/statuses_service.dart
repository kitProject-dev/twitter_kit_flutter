import 'package:chopper/chopper.dart';
import 'package:twitter_kit/src/model/tweet.dart';

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
  @Get(
      path: '/show.json?tweet_mode=extended'
          '&id={id}'
          '&trimUser={trimUser}'
          '&include_my_retweet={includeMyRetweet}'
          '&include_entities={includeEntities}')
  Future<Response<Tweet>> show(@Path() String id, @Path() bool trimUser,
      @Path() bool includeMyRetweet, @Path() bool includeEntities);
}
