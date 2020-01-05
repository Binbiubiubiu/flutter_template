import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/pages/login/phone_page.dart';
import 'package:flutter_template/utils/vw_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: px2dp(300),
              ),
              Center(
                child: Image.asset(
                  'assets/login/bez.png',
                  width: px2dp(250),
                ),
              ),
              Spacer(),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return PhonePage();
                    }),
                  );
                },
                minWidth: MediaQuery.of(context).size.width * .75,
                height: px2dp(120),
                elevation: 0.0,
                highlightElevation: 0.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(px2dp(60)),
                ),
                highlightColor: Color(0x20D3171A),
                splashColor: Colors.transparent,
                child: Text(
                  "手机号登录",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: px2dp(30)),
              SizedBox(
                width: MediaQuery.of(context).size.width * .75,
                height: px2dp(120),
                child: OutlineButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  borderSide: BorderSide(color: Colors.white, width: .5),
                  highlightedBorderColor: Colors.white,
                  highlightColor: Color(0x50FFFFFF),
                  highlightElevation: 0,
                  splashColor: Colors.transparent,
                  child: Text(
                    "立即体验",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 0,
                      padding: const EdgeInsets.all(0),
                      shape: CircleBorder(),
                      highlightColor: Colors.white38,
                      child: ImageIcon(
                        AssetImage("assets/login/bf2.png"),
                        color: Colors.white,
                        size: 40,
                      ),
                      splashColor: Colors.transparent,
                      onPressed: () {},
                    ),
                    MaterialButton(
                      minWidth: 0,
                      padding: const EdgeInsets.all(0),
                      shape: CircleBorder(),
                      highlightColor: Colors.white38,
                      child: ImageIcon(
                        AssetImage("assets/login/ahi.png"),
                        color: Colors.white,
                        size: 40,
                      ),
                      splashColor: Colors.transparent,
                      onPressed: () {},
                    ),
                    MaterialButton(
                      minWidth: 0,
                      padding: const EdgeInsets.all(0),
                      shape: CircleBorder(),
                      highlightColor: Colors.white38,
                      child: ImageIcon(
                        AssetImage("assets/login/bf0.png"),
                        color: Colors.white,
                        size: 40,
                      ),
                      splashColor: Colors.transparent,
                      onPressed: () {},
                    ),
                    MaterialButton(
                      minWidth: 0,
                      padding: const EdgeInsets.all(0),
                      shape: CircleBorder(),
                      highlightColor: Colors.white38,
                      child: ImageIcon(
                        AssetImage("assets/login/bew.png"),
                        color: Colors.white,
                        size: 40,
                      ),
                      splashColor: Colors.transparent,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: px2sp(34)),
                  children: [
                    WidgetSpan(
                      baseline: TextBaseline.alphabetic,
                      alignment: PlaceholderAlignment.middle,
                      child: IconButton(
                        padding: const EdgeInsets.all(0),
                        iconSize: 16.0,
                        icon: Icon(
                          Icons.check_box_outline_blank,
                          color: Colors.white54,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    TextSpan(
                      text: "同意",
                      style: TextStyle(color: Colors.white54),
                    ),
                    TextSpan(
                      text: "《用户协议》《隐私协议》《儿童隐私政策》",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
