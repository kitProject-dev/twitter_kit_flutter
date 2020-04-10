import 'package:chopper/chopper.dart';
import 'package:twitter_kit/twitter_kit.dart';

part "account_service.chopper.dart";

@ChopperApi(baseUrl: "/account")
abstract class AccountService extends ChopperService {
  static AccountService create([ChopperClient client]) =>
      _$AccountService(client);

  /// Returns an HTTP 200 OK response code and a representation of the requesting user if
  /// authentication was successful; returns a 401 status code and an error message if not. Use
  /// this method to test if supplied user credentials are valid.
  ///
  /// @param includeEntities (optional) The entities node will not be included when set to false.
  /// @param skipStatus (optional) When set to either true statuses will not be included in
  ///                   the returned user objects.
  /// @param includeEmail (optional) When set to true email will be returned in the user object as
  ///                     a string. If the user does not have an email address on their account, or
  ///                     if the email address is not verified, null will be returned.
  @Get(path: "/verify_credentials.json")
  Future<Response<User>> verifyCredentials(
      {@Query("include_entities") bool includeEntities,
      @Query("skip_status") bool skipStatus,
      @Query("include_email") bool includeEmail});
}
