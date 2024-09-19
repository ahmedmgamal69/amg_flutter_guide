import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ServerRequests {
  postAllRequest(String url) async {
    var response = await http.post(Uri.parse(url));
    if (response.statusCode == 200) {
      var resBody = jsonDecode(response.body);
      return resBody;
    } else {
      if (kDebugMode) {
        print("Error ${response.statusCode}:");
      }
    }
  }

  postOneRequest(String url, Map data) async {
    var response = await http.post(Uri.parse(url), body: data);
    if (response.statusCode == 200) {
      var resBody = jsonDecode(response.body);
      return resBody;
    } else {
      if (kDebugMode) {
        print("Error ${response.statusCode}:");
      }
    }
  }
}
