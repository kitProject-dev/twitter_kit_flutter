import 'package:chopper/chopper.dart';
import 'package:twitter_kit/src/model/tweet.dart';
import 'package:twitter_kit/twitter_kit.dart';

part "list_service.chopper.dart";

@ChopperApi(baseUrl: "/lists")
abstract class ListService extends ChopperService {
  static ListService createService([ChopperClient client]) =>
      _$ListService(client);

  /// Returns a timeline of tweets authored by members of the specified list. Retweets are included
  /// by default.
  /// @param listId The numerical id of the list.
  /// @param slug You can identify a list by its slug instead of its numerical id. If you decide to
  ///             do so, note that you'll also have to specify the list owner using the owner_id or
  ///             owner_screen_name parameters.
  /// @param ownerScreenName The screen name of the user who owns the list being requested by a
  ///                        slug.
  /// @param ownerId The user ID of the user who owns the list being requested by a slug.
  /// @param sinceId Returns results with an ID greater than (that is, more recent than) the
  ///                specified ID. There are limits to the number of Tweets which can be accessed
  ///                through the API. If the limit of Tweets has occurred since the since_id, the
  ///                since_id will be forced to the oldest ID available.
  /// @param maxId Returns results with an ID less than (that is, older than) or equal to the
  ///              specified ID.
  /// @param count Specifies the number of results to retrieve per "page."
  /// @param includeEntities Entities are ON by default in API 1.1, each Tweet includes a node
  ///                        called "entities." This node offers a variety of metadata about the
  ///                        Tweet in a discrete structure, including: user_mentions, urls, and
  ///                        hashtags.
  /// @param includeRetweets When set to either true, t or 1, the list timeline will contain native
  ///                        retweets (if they exist) in addition to the standard stream of tweets.
  ///                        The output format of retweeted tweets is identical to the
  ///                        representation you see in home_timeline.
  @Get(path: "/statuses.json")
  Future<Response<List<Tweet>>> statuses(@Query("list_id") int listId,
      {@Query("slug") String slug,
      @Query("tweet_mode") String tweetMode = "extended",
      @Query("include_cards") bool includeCards = true,
      @Query("cards_platform") String cardsPlatform = "TwitterKit-13",
      @Query("owner_screen_name") String ownerScreenName,
      @Query("owner_id") int ownerId,
      @Query("since_id") int sinceId,
      @Query("max_id") int maxId,
      @Query("count") int count,
      @Query("include_entities") bool includeEntities,
      @Query("include_rts") bool includeRetweets});
}
