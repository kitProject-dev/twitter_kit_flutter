import 'package:chopper/chopper.dart';

Request convertForm(Request req) {
  req = applyHeader(req, contentTypeKey, formEncodedHeaders);

  if (req.body is RequestBody) {
    final body = <String, String>{};
    req.body.toJson().forEach((key, val) {
      if (val != null) {
        body[key.toString()] = val.toString();
      }
    });

    req = req.copyWith(body: body);
  }

  return req;
}

abstract class RequestBody {
  Map<String, dynamic> toJson();
}
