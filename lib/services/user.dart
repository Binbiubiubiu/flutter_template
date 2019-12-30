import 'package:dio/dio.dart';
import 'package:flutter_template/utils/http_util.dart';

void login() async {
  try {
    Response response = await httpUtil.get("http://www.baidu.com");
    print(response);
  } catch (e) {
    print(e);
  }
}
