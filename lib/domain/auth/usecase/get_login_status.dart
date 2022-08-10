import 'package:dartz/dartz.dart';

import '../../core/error/server_failure.dart';
import '../../core/params/no_param.dart';
import '../../core/usecases.dart';
import '../repositories/i_auth_repository.dart';

class GetLoginStatus implements UseCase<bool, NoParams> {
  final IAuthRepository _repository;

  GetLoginStatus(this._repository);

  @override
  Future<Either<ServerFailure, bool>> call(NoParams params) async {
    final response = await _repository.getLoginStatus();
    return Right(response);
  }
}
