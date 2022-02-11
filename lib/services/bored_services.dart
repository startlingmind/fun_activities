// To parse this JSON data, do
//
//     final boredActivity = boredActivityFromJson(jsonString);

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:sample_api/data/model/model.dart';

class BoredService {
  Future<BoredActivity> getBoredActivity() async {
    late http.Response response;
    try {
      response = await http.get(Uri.parse(
          'https://www.boredapi.com/api/activity')); // base url + path components
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
    if (response.statusCode == 200) {
      final activity = boredActivityFromJson(response.body);
      return activity;
    } else {
      throw Exception("Error ");
    }
  }
}
