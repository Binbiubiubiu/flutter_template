import 'package:flutter/material.dart';
import 'package:flutter_template/utils/vw_util.dart';

class PhonePage extends StatefulWidget {
  @override
  _PhonePageState createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  TextEditingController _textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        leading: BackButtonIcon(),
        title: Text("手机号登录"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: TextField(
                controller: _textEditingController,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: "请输入手机号",
                  hasFloatingPlaceholder: false,
                  focusColor: Colors.blue,
                  focusedBorder: UnderlineInputBorder(),
                  prefixText: "+86  ",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {},
              minWidth: MediaQuery.of(context).size.width * .85,
              height: px2dp(120),
              elevation: 0.0,
              highlightElevation: 0.0,
              color: Theme.of(context).primaryColorDark,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(px2dp(60)),
              ),
              highlightColor: Color(0x20D3171A),
              splashColor: Colors.transparent,
              child: Text(
                "手机号登录",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
