import 'package:dartz/dartz.dart';

import '../../core/error/server_failure.dart';
import '../../core/params/no_param.dart';
import '../../core/usecases.dart';
import '../entities/user.dart';
import '../repositories/i_profile_repository.dart';

class GetProfile implements UseCase<User, NoParams> {
  final IProfileRepository _repository;

  GetProfile(this._repository);

  @override
  Future<Either<ServerFailure, User>> call(NoParams params) =>
      _repository.getProfile();
}
