import 'package:dartz/dartz.dart';

import '../../core/error/server_failure.dart';
import '../param/login_params.dart';

abstract class IAuthRepository {
  Future<Either<ServerFailure, Unit>> loginWithEmailAndPassword(
      LoginParams param);

  Future<Either<ServerFailure, Unit>> logOut();
  Future<bool> getLoginStatus();
  Future<bool> getRememberMe();
}
