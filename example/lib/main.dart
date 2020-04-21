import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:twitter_kit/twitter_kit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO Your key.
    final twitter = Twitter("", "", logging: true);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: FutureBuilder(
            future: twitter.initialize(),
            builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
              if (snapshot.hasData) {
                return Body(twitter, snapshot.data);
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  Body(this._twitter, this.isSessionActive);

  final Twitter _twitter;
  final bool isSessionActive;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _isSessionActive;
  Tweet _tweet;

  @override
  void initState() {
    _isSessionActive = widget.isSessionActive;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_isSessionActive) {
      if (_tweet == null) {
        _requestShowTweet();
      }
      return InkWell(
        onTap: () async {
          await widget._twitter.logout();
          setState(() {
            _isSessionActive = false;
          });
        },
        child: Text(_tweet != null ? jsonEncode(_tweet.toJson()) : "ready"),
      );
    } else {
      return RaisedButton(
          child: const Text('Sign In With Twitter.'),
          onPressed: () async {
            Session session;
            try {
              session = await widget._twitter.login();
            } on TwitterAuthException catch (e) {
              print(e.message);
            }
            if (session != null) {
              setState(() {
                _isSessionActive = true;
              });
            }
          });
    }
  }

  Future<void> _requestShowTweet() async {
    widget._twitter.statusesService.show(1242645624106807297).then((response) {
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
