import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:twitter_kit/twitter_kit.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Tweet _tweet;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    setState(() {
      final jsonString =
          '{"created_at":"Sat May 16 17:16:24 +0000 2015","id":599624452280754178,"id_str":"599624452280754178","text":"リツイート用のツイートです。 このツイートを好きなだけリツイートして下さい。","truncated":false,"entities":{"hashtags":[],"symbols":[],"user_mentions":[],"urls":[]},"source":"","in_reply_to_status_id":null,"in_reply_to_status_id_str":null,"in_reply_to_user_id":null,"in_reply_to_user_id_str":null,"in_reply_to_screen_name":null,"user":{"id":1528352858,"id_str":"1528352858","name":"あらゆ@プロットメーカー的なもの作成中","screen_name":"arayutw","location":"日本 東京","description":"プロット（物語やキャラクター）をまとめるサービスを作成中。進捗は70%くらい。 https://t.co/PGlIztwLMX https://t.co/IihCFJXgNp https://t.co/fN6nS6ou7e https://t.co/DZpFLSUugD https://t.co/ScEV7AVZSN","url":null,"entities":{"description":{"urls":[{"url":"https://t.co/PGlIztwLMX","expanded_url":"http://emojipicker.net","display_url":"emojipicker.net","indices":[41,64]},{"url":"https://t.co/IihCFJXgNp","expanded_url":"http://libtwi.com","display_url":"libtwi.com","indices":[65,88]},{"url":"https://t.co/fN6nS6ou7e","expanded_url":"http://lostpet.jp","display_url":"lostpet.jp","indices":[89,112]},{"url":"https://t.co/DZpFLSUugD","expanded_url":"http://idtwi.com","display_url":"idtwi.com","indices":[113,136]},{"url":"https://t.co/ScEV7AVZSN","expanded_url":"http://syncer.jp","display_url":"syncer.jp","indices":[137,160]}]}},"protected":false,"followers_count":1789,"friends_count":476,"listed_count":109,"created_at":"Tue Jun 18 17:28:51 +0000 2013","favourites_count":1230,"utc_offset":null,"time_zone":null,"geo_enabled":false,"verified":false,"statuses_count":34344,"lang":null,"contributors_enabled":false,"is_translator":false,"is_translation_enabled":true,"profile_background_color":"2660A1","profile_background_image_url":"http://abs.twimg.com/images/themes/theme12/bg.gif","profile_background_image_url_https":"https://abs.twimg.com/images/themes/theme12/bg.gif","profile_background_tile":false,"profile_image_url":"http://pbs.twimg.com/profile_images/934965688808046592/iEiSkmmr_normal.jpg","profile_image_url_https":"https://pbs.twimg.com/profile_images/934965688808046592/iEiSkmmr_normal.jpg","profile_banner_url":"https://pbs.twimg.com/profile_banners/1528352858/1484800383","profile_link_color":"6495ED","profile_sidebar_border_color":"F2E195","profile_sidebar_fill_color":"FFF7CC","profile_text_color":"0C3E53","profile_use_background_image":true,"has_extended_profile":false,"default_profile":false,"default_profile_image":false,"following":null,"follow_request_sent":null,"notifications":null,"translator_type":"regular"},"geo":null,"coordinates":null,"place":null,"contributors":null,"is_quote_status":false,"retweet_count":60,"favorite_count":28,"favorited":false,"retweeted":false,"lang":"ja"}';
      _tweet = Tweet.fromJson(jsonDecode(jsonString));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text(_tweet != null ? jsonEncode(_tweet.toJson()) : "ready"),
        ),
      ),
    );
  }
}
