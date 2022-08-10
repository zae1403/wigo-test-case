import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'dio_interceptors.dart';

const String baseUrl = 'https://api-development.wondergo.id/api/v1';

class DioClient {
  static Dio get instance {
    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 30000,
      sendTimeout: 30000,
      receiveTimeout: 30000,
    );

    return Dio(options)
      ..interceptors.addAll([if (kDebugMode) LoggingInterceptor()]);
  }
}
