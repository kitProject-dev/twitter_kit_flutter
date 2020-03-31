import 'dart:convert';
import 'dart:io';

class Util {
  static Future<Map<String, dynamic>> getJson(String filePath) async {
    String jsonString;
    try {
      jsonString = await File(filePath).readAsString();
    } catch (e) {
      jsonString = await File("../" + filePath).readAsString();
    }
    return jsonDecode(jsonString);
  }
}
