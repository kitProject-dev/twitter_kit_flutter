import 'dart:async';

import 'package:flutter/services.dart';

class TwitterKit {
  static const MethodChannel _channel =
      const MethodChannel('twitter_kit');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
