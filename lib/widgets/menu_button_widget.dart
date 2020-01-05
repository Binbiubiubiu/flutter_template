import 'package:flutter/material.dart';
import 'package:flutter_template/utils/vw_util.dart';

class MenuButtonWidget extends StatelessWidget {
  final Icon icon;
  final String text;

  const MenuButtonWidget({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _size = px2dp(140);

    return GestureDetector(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            width: _size,
            height: _size,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFF13931), Color(0xFFD42E2E)],
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: icon,
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: px2sp(36),
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}
