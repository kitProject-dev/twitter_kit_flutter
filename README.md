# twitter_kit

Project to make it easier to access the Twitter API.
Referring to the Twitter kit for Android.

## Authorize
※iOS Not work
  ```dart
  final Twitter twitter = Twitter(consumerKey, consumerSecret);

  // get current session
  final currentSession = await twitter.currentSession;

  // is session active
  final isSessionActive = await twitter.isSessionActive;

  // login
  final isLogin = await twitter.login();

  // logout
  await twitter.logout();
  ```

## GET https://api.twitter.com/1.1/statuses/show.json
  ```dart
  final Twitter twitter = Twitter(consumerKey, consumerSecret);
  await _twitter.initialize();
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

## PSOT https://api.twitter.com/1.1/statuses/update.json
  ```dart
  final Twitter twitter = Twitter(consumerKey, consumerSecret);
  final StatusesService statusesService = twitter.statusesService;
  await statusesService.update(StatusesUpdateBody("tweet")).then((response) {
    if (response.isSuccessful) {
      final Tweet tweet = response.body;
      print(tweet.toJson());
    } else {
      print(response.error);
    }
  });
  ```