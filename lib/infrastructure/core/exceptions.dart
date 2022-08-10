import 'dart:io';

import 'package:dio/dio.dart' hide Headers;

const int defaultErrorCode = -1;
const int socketErrorCode = -4;

class ServerException implements Exception {
  final int errorCode;
  final String errorMessage;
  final String errorTitle;

  const ServerException._({
    this.errorCode = defaultErrorCode,
    required this.errorMessage,
    required this.errorTitle,
  });

  factory ServerException.withMessage(
      {required String title, required String message, int? statusCode}) {
    return ServerException._(
      errorCode: statusCode ?? defaultErrorCode,
      errorMessage: message,
      errorTitle: title,
    );
  }

  factory ServerException.withError(DioError error) {
    return _handleError(error);
  }

  static ServerException _handleError(DioError error) {
    int code = defaultErrorCode;
    String message = '';
    String title = '';

    switch (error.type) {
      case DioErrorType.cancel:
        title = 'Oh no...';
        message = 'Request was cancelled';
        break;
      case DioErrorType.connectTimeout:
        title = 'Connection timeout...';
        message = 'Please check your internet connection and try again.';
        break;
      case DioErrorType.other:
        List<int> noNetworkConnectionCodes = [7, 101, 111];
        var exception = error.error;
        if (exception is SocketException &&
            noNetworkConnectionCodes.contains(exception.osError?.errorCode)) {
          code = socketErrorCode;
          title = 'No connection found';
          message = 'Please check your internet connection and try again.';
          break;
        }
        title = 'Oh no...';
        message = 'Internal Server Error';
        break;
      case DioErrorType.receiveTimeout:
        title = 'Oh no...';
        message = 'Receive timeout in connection';
        break;
      case DioErrorType.response:
        code = error.response?.statusCode ?? -1;

        if (error.response?.data != null) {
          var data = error.response?.data;

          if (data is String) {
            title = 'Oh no...';
            message = 'Something went wrong. We are working on it.';
            break;
          }

          if ((data['message'] as String).contains('expired')) {
            code = 498;
            title = 'Unauthorized User';
            message =
                'Your session is ended. Please login again to use this App.';
            break;
          }

          if (code == 500) {
            title = 'Oh no...';
            message = 'Internal Server Error';
            break;
          }

          title = 'Something went wrong';
          message =
              data['message'] ?? 'Something went wrong. We are working on it.';
          break;
        }
        title = 'Something went wrong';
        message = 'Try refreshing the app';
        break;
      case DioErrorType.sendTimeout:
        title = 'Oh no...';
        message = 'Receive timeout in send request';
        break;
    }

    return ServerException._(
      errorCode: code,
      errorMessage: message,
      errorTitle: title,
    );
  }
}
