import 'package:dartz/dartz.dart';

import '../../core/error/server_failure.dart';
import '../../core/usecases.dart';
import '../param/login_params.dart';
import '../repositories/i_auth_repository.dart';

class SignInWithEmail implements UseCase<Unit, LoginParams> {
  final IAuthRepository _repository;

  SignInWithEmail(this._repository);

  @override
  Future<Either<ServerFailure, Unit>> call(LoginParams params) =>
      _repository.loginWithEmailAndPassword(params);
}
