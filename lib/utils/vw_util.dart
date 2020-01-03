import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const double _designWidth = 1080; // 设计稿宽度
const double _designHeight = 1920; // 设计稿的高度
const bool _allowFontScaling = true; // 是否允许字体缩放

class ScreenBuilder extends StatelessWidget {
  final Widget child;

  const ScreenBuilder({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        ScreenUtil.instance = ScreenUtil(
          width: _designWidth,
          height: _designHeight,
          allowFontScaling: _allowFontScaling,
        )..init(context);
        return child;
      },
    );
  }
}

double px2sp(double size) => ScreenUtil.instance.setSp(size);

double px2dp(double size) => ScreenUtil.instance.setWidth(size);
