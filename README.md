# twitter_kit

Project to make it easier to access the Twitter API.
Referring to the Twitter kit for Android.
Web is not supported due to Cross-Domain issues.

# Usage
  ```dart
  import 'package:twitter_kit/twitter_kit.dart';

  final Twitter twitter = Twitter(consumerKey, consumerSecret);
  await _twitter.initialize();
  // get current session
  final currentSession = await twitter.currentSession;
  // is session active
  final isSessionActive = await twitter.isSessionActive;
  // login
  final isLogin = await twitter.login();
  // logout
  await twitter.logout();
  // use rest api
  final StatusesService statusesService = twitter.statusesService;
  await statusesService.show(1242645624106807297).then((response) {
    if (response.isSuccessful) {
      final Tweet tweet = response.body;
      print(tweet.toJson());
    } else {
      print(response.error);
    }
  });
  ```

## TODO
- iOS authorize.
- Adding the media api
- Adding the search api
- Adding the APIs not included in twitter-kit-android
