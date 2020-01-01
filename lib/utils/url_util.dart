import 'package:url_launcher/url_launcher.dart';

class UrlUtil {
  /// 通过默认浏览器打开网页
  static http(String URL) async {
    await url('http:$URL');
  }

  /// 发邮件
  static mailto(String email, String subject, String body) async {
    await url('mailto:$email?subject=$subject&body=$body');
  }

  /// 打电话
  static tel(String phone) async {
    await url('tel:$phone');
  }

  /// 发短信
  static sms(String phone) async {
    await url('sms:$phone');
  }

  static url(String urlString, {String errMsg: '链接不合法'}) async {
    if (await canLaunch(urlString)) {
      await launch(urlString);
    } else {
      throw errMsg;
    }
  }
}
