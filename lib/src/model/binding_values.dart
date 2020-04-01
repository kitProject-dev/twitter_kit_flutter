import 'package:twitter_kit/src/model/image_value.dart';
import 'package:twitter_kit/src/model/user_value.dart';

class BindingValues {
  BindingValues(this._json, this._bindingValues);

  Map<String, dynamic> _json;
  Map<String, dynamic> _bindingValues;

  bool containsKey(String key) {
    return _bindingValues.containsKey(key);
  }

  operator [](Object key) {
    return _bindingValues[key];
  }

  factory BindingValues.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> bindingValues = {};
    json.keys.forEach((key) {
      Map<String, dynamic> value = json[key];
      switch (value["type"]) {
        case "STRING":
          bindingValues[key] = value["string_value"];
          break;
        case "IMAGE":
          bindingValues[key] = ImageValue.fromJson(value["image_value"]);
          break;
        case "USER":
          bindingValues[key] = UserValue.fromJson(value["user_value"]);
          break;
        case "BOOLEAN_TYPE":
          bindingValues[key] = value["boolean_value"].toLowerCase() == 'true';
          break;
        default:
          bindingValues[key] = null;
          break;
      }
    });
    return BindingValues(json, bindingValues);
  }

  Map<String, dynamic> toJson() => this._json;
}
