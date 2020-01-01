import 'package:dio/dio.dart';

Dio initRequestUtil() {
  BaseOptions options = new BaseOptions(
    baseUrl: "http://192.168.1.102:3001",
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  Dio dio = new Dio(options);

  dio.interceptors.add(AuthInterceptor());

  return dio;
}

Dio RequestUtil = initRequestUtil();

class AuthInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) {
//    print("REQUEST[${options?.method}] => PATH: ${options?.path}");
    RequestUtil.interceptors.requestLock.lock();
    options.headers["token"] = "12";
    RequestUtil.interceptors.requestLock.unlock();
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
