import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_params.freezed.dart';

@freezed
class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String email,
    required String password,
    required bool rememberMe,
  }) = _LoginParams;
}
