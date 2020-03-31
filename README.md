# twitter_kit

Project to make it easier to access the Twitter API.
Referring to the Twitter kit for Android.

## GET https://api.twitter.com/1.1/statuses/show.json
  ```dart
  final Twitter twitter = Twitter(consumerKey, consumerSecret, accessToken, accessSecret);
  final StatusesService statusesService = twitter.statusesService;
  await statusesService.show("1242645624106807297", true, true, true).then((response) {
    if (response.isSuccessful) {
      final Tweet tweet = response.body;
      print(tweet.toJson());
    } else {
      print(response.error);
    }
  });
  ```
