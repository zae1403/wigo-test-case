import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'application/auth/auth_bloc.dart';
import 'application/auth/login_form/login_form_bloc.dart';
import 'application/profile/profile_bloc.dart';
import 'domain/auth/repositories/i_auth_repository.dart';
import 'domain/auth/usecase/get_login_status.dart';
import 'domain/auth/usecase/get_remember_me.dart';
import 'domain/auth/usecase/sign_in_with_email.dart';
import 'domain/auth/usecase/sign_out.dart';
import 'domain/profile/repositories/i_profile_repository.dart';
import 'domain/profile/usecases/get_profile.dart';
import 'infrastructure/auth/datasources/auth_local_data_source.dart';
import 'infrastructure/auth/datasources/auth_remote_data_source.dart';
import 'infrastructure/auth/repositories/auth_repository.dart';
import 'infrastructure/core/dio_client.dart';
import 'infrastructure/core/local_storage.dart';
import 'infrastructure/profile/datasources/profile_local_data_source.dart';
import 'infrastructure/profile/repositories/profile_repository.dart';

final sl = GetIt.instance;

Future<void> initServices() async {
  await _initExternalDependencies();
  _initAuthenticationFeature();
  _initProfileFeature();
}

Future<void> _initExternalDependencies() async {
  ///Hive for local storage
  await initHiveStorage();
  sl.registerLazySingleton<HiveInterface>(() => Hive);

  ///Http Client with Dio
  sl.registerLazySingleton<Dio>(() => DioClient.instance);
}

void _initAuthenticationFeature() {
  sl.registerLazySingleton<IAuthLocalDataSource>(
      () => HiveAuthLocalDataSource(sl()));
  sl.registerLazySingleton<IAuthRemoteDataSource>(
      () => AuthRemoteDataSource(sl()));
  sl.registerLazySingleton<IAuthRepository>(
      () => AuthRepository(sl(), sl(), sl()));
  sl.registerLazySingleton<SignInWithEmail>(() => SignInWithEmail(sl()));
  sl.registerLazySingleton<GetLoginStatus>(() => GetLoginStatus(sl()));
  sl.registerLazySingleton<GetRememberMe>(() => GetRememberMe(sl()));
  sl.registerLazySingleton<SignOut>(() => SignOut(sl()));
  sl.registerLazySingleton(() => AuthBloc(sl(), sl(), sl()));
  sl.registerFactory(() => LoginFormBloc(sl()));
}

void _initProfileFeature() {
  sl.registerLazySingleton<IProfileLocalDataSource>(
      () => HiveProfileLocalDataSource(sl()));
  sl.registerLazySingleton<IProfileRepository>(() => ProfileRepository(sl()));
  sl.registerLazySingleton<GetProfile>(() => GetProfile(sl()));
  sl.registerFactory(() => ProfileBloc(sl()));
}
