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
  @Get(path: '/show.json')
  Future<Response<Tweet>> show(@Query("id") int id,
      {@Query("trimUser") bool trimUser = true,
      @Query("include_my_retweet") bool includeMyRetweet = true,
      @Query("include_entities") bool includeEntities = true,
      @Query("tweet_mode") String tweetMode = "extended"});
}
