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
    requestShowTweet();
  }

  Future<void> requestShowTweet() async {
    // TODO Your key.
    await Twitter("", "", "", "")
        .statusesService
        .show(1242645624106807297)
        .then((response) {
      if (response.isSuccessful) {
        setState(() {
          _tweet = response.body;
        });
      } else {
        print(response.error);
      }
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
