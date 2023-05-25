import 'dart:convert';
import 'package:flutter/services.dart';

class Utils {
  Future<dynamic> readJsonFromFile(String filePath) async {
    String jsonString = await rootBundle.loadString(filePath);
    dynamic jsonData = json.decode(jsonString);
    return jsonData;
  }
}
