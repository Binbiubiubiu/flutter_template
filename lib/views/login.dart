import 'package:flutter/material.dart';
import 'package:flutter_template/route/application.dart';
import 'package:flutter_template/route/routes.dart';

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
        onPressed: () {
          Application.navigateTo(context, Routes.i18n, {});
        },
        child: Text("12"),
      ),
    );
  }
}
