import 'package:flutter/material.dart';
import 'package:flutter_template/utils/auth_util.dart';

class SpExample extends StatefulWidget {
  @override
  _SpExampleState createState() => _SpExampleState();
}

class _SpExampleState extends State<SpExample> {
  String _text = "http://";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    AuthUtil.setAuthToken("token");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _text = await AuthUtil.getAuthToken();
          print(12);
          setState(() {});
        },
        child: Text("按钮"),
      ),
      body: Center(
        child: Text(_text),
      ),
    );
  }
}
