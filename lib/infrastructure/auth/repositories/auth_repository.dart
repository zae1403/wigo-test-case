// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../../domain/auth/param/login_params.dart';
import '../../../domain/auth/repositories/i_auth_repository.dart';
import '../../../domain/core/error/server_failure.dart';
import '../../core/exceptions.dart';
import '../../core/extensions.dart';
import '../../profile/datasources/profile_local_data_source.dart';
import '../datasources/auth_local_data_source.dart';
import '../datasources/auth_remote_data_source.dart';

class AuthRepository implements IAuthRepository {
  final IAuthRemoteDataSource remoteDataSource;
  final IAuthLocalDataSource localDataSource;
  final IProfileLocalDataSource profileLocalDataSource;

  AuthRepository(
    this.remoteDataSource,
    this.localDataSource,
    this.profileLocalDataSource,
  );

  @override
  Future<Either<ServerFailure, Unit>> loginWithEmailAndPassword(
      LoginParams param) async {
    try {
      final response = await remoteDataSource.loginWithEmailAndPassword(
        email: param.email,
        password: param.password,
      );

      localDataSource.saveRememberMe(param.rememberMe);

      localDataSource.saveToken(response.token);
      profileLocalDataSource.saveUser(response.user);

      return const Right(unit);
    } on ServerException catch (e) {
      return Left(e.toFailure());
    }
  }

  @override
  Future<bool> getLoginStatus() async => localDataSource.isLoggedIn();

  @override
  Future<Either<ServerFailure, Unit>> logOut() async {
    await localDataSource.clearLoginSession();
    return const Right(unit);
  }

  @override
  Future<bool> getRememberMe() async => localDataSource.rememberMe;
}
