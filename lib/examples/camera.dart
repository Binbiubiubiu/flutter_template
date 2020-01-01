import 'package:flutter/material.dart';

class CameraExample extends StatefulWidget {
  @override
  _CameraExampleState createState() => _CameraExampleState();
}

class _CameraExampleState extends State<CameraExample> {
  String _url = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          child: Column(
            children: <Widget>[
              Image.network(_url),
              FlatButton(
                onPressed: () {},
                child: Text("拍照"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
