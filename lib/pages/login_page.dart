import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("12"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          int counter = (prefs.getInt('counter') ?? 0) + 1;
          print('Pressed $counter times.');
          await prefs.setInt('counter', counter);
//          Application.navigateTo(context, Routes.i18n, {});
        },
        child: Text("12"),
      ),
    );
  }
}
