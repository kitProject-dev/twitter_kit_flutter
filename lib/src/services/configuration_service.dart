import 'package:chopper/chopper.dart';
import 'package:twitter_kit/twitter_kit.dart';

part "configuration_service.chopper.dart";

@ChopperApi(baseUrl: "/help")
abstract class ConfigurationService extends ChopperService {
  static ConfigurationService create([ChopperClient client]) =>
      _$ConfigurationService(client);

  /// Returns the current configuration used by Twitter including twitter.com slugs which are not
  /// user names, maximum photo resolutions, and t.co URL lengths.
  @Get(path: "/configuration.json")
  Future<Response<Configuration>> configuration();
}
