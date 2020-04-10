import 'package:chopper/chopper.dart';
import 'package:twitter_kit/src/services/model/convert_form.dart';
import 'package:twitter_kit/src/services/model/favorite_create_body.dart';
import 'package:twitter_kit/src/services/model/favorite_destroy_body.dart';
import 'package:twitter_kit/twitter_kit.dart';

part "favorite_service.chopper.dart";

@ChopperApi(baseUrl: "/favorites")
abstract class FavoriteService extends ChopperService {
  static FavoriteService createService([ChopperClient client]) =>
      _$FavoriteService(client);

  /// Returns recent Tweets favorited by the authenticating or specified user,
  /// by default returns 20 tweets.
  ///
  /// @param userId (optional) The ID of the user for whom to return results for.
  /// @param screenName (optional) The screen name of the user for whom to return results for.
  /// @param count (optional) Specifies the number of records to retrieve. Must be less than or
  ///              equal to 200. Defaults to 20.
  /// @param sinceId (optional) Returns results with an ID greater than (that is, more recent than)
  ///                the specified ID. There are limits to the number of Tweets which can be
  ///                accessed through the API. If the limit of Tweets has occured since the
  ///                since_id, the since_id will be forced to the oldest ID available.
  /// @param maxId (optional) Returns results with an ID less than (that is, older than) or equal
  ///              to the specified ID.
  /// @param includeEntities (optional) The entities node will be omitted when set to false.
  @Get(path: "/list.json")
  Future<Response<List<Tweet>>> list(
      {@Query("tweet_mode") String tweetMode = "extended",
      @Query("include_cards") bool includeCards = true,
      @Query("cards_platform") String cardsPlatform = "TwitterKit-13",
      @Query("user_id") int userId,
      @Query("screen_name") String screenName,
      @Query("count") int count,
      @Query("since_id") String sinceId,
      @Query("max_id") String maxId,
      @Query("include_entities") bool includeEntities});

  /// Un-favorites the status specified in the ID parameter as the authenticating user. Returns the
  /// un-favorited status in the requested format when successful.
  /// <p>
  /// This process invoked by this method is asynchronous. The immediately returned status may not
  /// indicate the resultant favorited status of the Tweet. A 200 OK response from this method will
  /// indicate whether the intended action was successful or not.
  ///
  /// @param id (required) The numerical ID of the desired status.
  /// @param includeEntities (optional) The entities node will be omitted when set to false.
  @FactoryConverter(request: convertForm)
  @Post(path: "/destroy.json", headers: {contentTypeKey: formEncodedHeaders})
  Future<Response<Tweet>> destroy(@Body() FavoriteDestroyBody destroyBody);

  /// Favorites the status specified in the ID parameter as the authenticating user. Returns the
  /// favorite status when successful.
  /// <p>
  /// This process invoked by this method is asynchronous. The immediately returned status may not
  /// indicate the resultant favorited status of the Tweet. A 200 OK response from this method will
  /// indicate whether the intended action was successful or not.
  ///
  /// @param id (required) The numerical ID of the desired status.
  /// @param includeEntities (optional) The entities node will be omitted when set to false.
  @FactoryConverter(request: convertForm)
  @Post(path: "/create.json", headers: {contentTypeKey: formEncodedHeaders})
  Future<Response<Tweet>> create(@Body() FavoriteCreateBody createBody);
}
