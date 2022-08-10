import 'package:freezed_annotation/freezed_annotation.dart';

import '../../profile/models/user_model.dart';
import 'token_model.dart';

part 'login_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
class LoginResponse {
  const LoginResponse({
    required this.token,
    required this.user,
  });

  final TokenModel token;
  final UserModel user;

  /// Connect the generated [_$LoginResponseFromJson] function to the `fromJson`
  /// factory.
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
