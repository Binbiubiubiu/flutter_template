import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthUtil {
  static setAuthToken(String token) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("token", token);
  }

  static getAuthToken() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString("token");
  }
}
