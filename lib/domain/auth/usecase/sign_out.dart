import 'package:dartz/dartz.dart';

import '../../core/error/server_failure.dart';
import '../../core/params/no_param.dart';
import '../../core/usecases.dart';
import '../repositories/i_auth_repository.dart';

class SignOut implements UseCase<Unit, NoParams> {
  final IAuthRepository _repository;

  SignOut(this._repository);

  @override
  Future<Either<ServerFailure, Unit>> call(NoParams params) =>
      _repository.logOut();
}
