import 'package:dio/dio.dart';

import '../../core/exceptions.dart';
import '../models/login_response.dart';

abstract class IAuthRemoteDataSource {
  Future<LoginResponse> loginWithEmailAndPassword(
      {required String email, required String password});
}

class AuthRemoteDataSource implements IAuthRemoteDataSource {
  final Dio _client;

  AuthRemoteDataSource(this._client);
  @override
  @override
  Future<LoginResponse> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      var response = await _client.post(
        '/auth/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      return LoginResponse.fromJson(response.data['data']);
    } on DioError catch (e) {
      throw ServerException.withError(e);
    }
  }
}
