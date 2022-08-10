import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show debugPrint;

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String headers = '';
    options.headers.forEach((key, value) {
      headers += '| $key: $value';
    });

    debugPrint(
        '┌------------------------------------------------------------------------------');
    debugPrint('''| [DIO] Request: ${options.method} ${options.uri}
       | ${options.data.toString()}
       | Headers:\n$headers''');
    debugPrint(
        '├------------------------------------------------------------------------------');

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
        '| [DIO] Response ${response.requestOptions.uri} [code ${response.statusCode}]: ${response.data.toString()}');
    debugPrint(
        '└------------------------------------------------------------------------------');

    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    debugPrint('| [DIO] Error: ${err.error}: ${err.response.toString()}');
    debugPrint(
        '└------------------------------------------------------------------------------');

    super.onError(err, handler);
  }
}
