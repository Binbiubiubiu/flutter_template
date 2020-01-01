import 'dart:io';

import 'package:dio/dio.dart';
import '../utils/request_util.dart';

Future<Response> uploadBySingle(File file,
    {String filename, ProgressCallback onSendProgress}) async {
  FormData formData = FormData.fromMap({
    "file": await MultipartFile.fromFile(
      file.path,
      filename: filename ?? file.path.split("/").last,
    ),
  });

  return RequestUtil.post(
    "/upload/single",
    data: formData,
    onSendProgress: onSendProgress,
  );
}
