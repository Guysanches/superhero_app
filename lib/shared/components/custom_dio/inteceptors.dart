import 'package:dio/dio.dart';

class CustomInterceptors extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("Request [${options.method}] => Path: ${options.path}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
        "Response [${response.statusCode}] => Path: ${response.requestOptions.path}");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
        "REQUEST [${err.response?.statusCode}] => Path: ${err.requestOptions.path}");
    super.onError(err, handler);
  }
}
