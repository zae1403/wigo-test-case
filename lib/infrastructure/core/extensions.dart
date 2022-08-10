import '../../domain/core/error/server_failure.dart';
import 'exceptions.dart';

extension ServerExceptionX on ServerException {
  ServerFailure toFailure() {
    switch (errorCode) {
      case 498:
        return ServerFailure.sessionEnded(message: errorMessage);
      default:
        return ServerFailure(message: errorMessage);
    }
  }
}
