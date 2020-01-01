import 'package:flutter/material.dart';
import 'package:flutter_template/utils/url_util.dart';

class UrlExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UrlExample"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                UrlUtil.tel("13588266679");
              },
              child: Text("打电话"),
            ),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                UrlUtil.sms("13588266679");
              },
              child: Text("发短信"),
            ),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                UrlUtil.mailto("2632003786@qq.com", "你好", "你好");
              },
              child: Text("发邮件"),
            ),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                UrlUtil.http("www.baidu.com");
              },
              child: Text("打开浏览器"),
            ),
          ],
        ),
      ),
    );
  }
}
