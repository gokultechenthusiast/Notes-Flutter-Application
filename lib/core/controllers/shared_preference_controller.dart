import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// this controller is for shared preference
class SharedPreferenceController extends GetxController {
  // to read values from shared preference
  readValue(key) async {
    debugPrint("Entered to read value from key $key");
    final preferences = await SharedPreferences.getInstance();
    var value = preferences.get(key);
    debugPrint("Entered to read value of key $key is $value");
    return value ?? "";
  }

  // to write value to shared preference
  writeValue(key, value) async {
    debugPrint("Entered to write value:- $value to key $key");
    final preferences = await SharedPreferences.getInstance();
    if (value is String) await preferences.setString(key, value);
  }

  // clear all data from shared preference
  clearAll() async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }
}
