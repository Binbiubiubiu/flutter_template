import 'package:dio/dio.dart';

Dio initHttpUtil() {
  BaseOptions options = new BaseOptions(
    baseUrl: "https://www.xx.com/api",
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  Dio dio = new Dio(options);

  dio.interceptors.add(AuthInterceptor());

  return dio;
}

Dio httpUtil = initHttpUtil();

class AuthInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) {
//    print("REQUEST[${options?.method}] => PATH: ${options?.path}");
    httpUtil.interceptors.requestLock.lock();
    options.headers["token"] = "12";
    httpUtil.interceptors.requestLock.unlock();
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
//    print(
//        "RESPONSE[${response?.statusCode}] => PATH: ${response?.request?.path}");
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
//    print("ERROR[${err?.response?.statusCode}] => PATH: ${err?.request?.path}");
    return super.onError(err);
  }
}
