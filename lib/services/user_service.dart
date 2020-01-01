import 'package:dio/dio.dart';
import '../utils/request_util.dart';

void login() async {
  try {
    Response response = await RequestUtil.get("http://www.baidu.com");
    print(response);
  } catch (e) {
    print(e);
  }
}
