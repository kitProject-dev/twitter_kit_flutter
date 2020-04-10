import 'package:chopper/chopper.dart';
import 'package:twitter_kit/twitter_kit.dart';

part "collection_service.chopper.dart";

@ChopperApi(baseUrl: "/collections")
abstract class CollectionService extends ChopperService {
  static CollectionService create([ChopperClient client]) =>
      _$CollectionService(client);

  /// Retrieve the identified TwitterCollection, presented as a list of the curated Tweets.
  /// The response structure of this method differs significantly from timelines you may be
  /// used to working with in the Twitter REST API.
  /// Use the response/position hash to navigate through the collection via the min_position
  /// and max_position. The was_truncated attribute will indicate to you whether additional tweets
  /// exist in the collection outside of what was in range of the current request.
  /// @param id The identifier of the Collection to return results for (e.g. "custom-5394878324")
  /// @param count Specifies the number of Tweets to try and retrieve, up to a maximum of 200 per
  ///              distinct request. The value of count is best thought of as an "up to" parameter;
  ///              receiving less results than the specified count does not necessarily mean there
  ///              aren't remaining results to fetch.
  /// @param maxPosition Returns results with a position value less than or equal to the specified
  ///                    position.
  /// @param minPosition Returns results with a position greater than the specified position.
  @Get(path: "/entries.json")
  Future<Response<TwitterCollection>> collection(@Query("id") String id,
      {@Query("tweet_mode") String tweetMode = "extended",
      @Query("include_cards") bool includeCards = true,
      @Query("cards_platform") String cardsPlatform = "TwitterKit-13",
      @Query("count") int count,
      @Query("max_position") int maxPosition,
      @Query("min_position") int minPosition});
}
