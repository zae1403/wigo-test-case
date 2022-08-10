import 'package:dartz/dartz.dart';

import '../../../domain/core/error/server_failure.dart';
import '../../../domain/profile/entities/user.dart';
import '../../../domain/profile/repositories/i_profile_repository.dart';
import '../../core/exceptions.dart';
import '../../core/extensions.dart';
import '../datasources/profile_local_data_source.dart';
import '../mappers/user_model_mapper.dart';

class ProfileRepository implements IProfileRepository {
  final IProfileLocalDataSource _localDataSource;

  ProfileRepository(this._localDataSource);
  @override
  Future<Either<ServerFailure, User>> getProfile() async {
    try {
      final response = _localDataSource.user;

      if (response == null) {
        return const Left(ServerFailure(message: 'User not found'));
      }
      return Right(response.toDomain());
    } on ServerException catch (e) {
      return Left(e.toFailure());
    }
  }
}
