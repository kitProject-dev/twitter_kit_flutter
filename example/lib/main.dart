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
  Twitter _twitter;
  Tweet _tweet;

  @override
  void initState() {
    super.initState();
    // TODO Your key.
    _twitter = Twitter("", "");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: FutureBuilder(
            future: _twitter.initialize(),
            builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data) {
                  if (_tweet == null) {
                    _requestShowTweet();
                  }
                  return Text(
                      _tweet != null ? jsonEncode(_tweet.toJson()) : "ready");
                } else {
                  return RaisedButton(
                      child: const Text('Sign In With Twitter.'),
                      onPressed: () async {
                        final twitterLoginStatus = await _twitter.login();
                        if (twitterLoginStatus) {
                          setState(() {});
                        }
                      });
                }
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }

  Future<void> _requestShowTweet() async {
    _twitter.statusesService.show(1242645624106807297).then((response) {
      if (response.isSuccessful) {
        setState(() {
          _tweet = response.body;
        });
      } else {
        print(response.error);
      }
    });
  }
}
