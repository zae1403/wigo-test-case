import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TokenModel {
  const TokenModel({
    required this.accessToken,
    required this.refreshToken,
  });
  final String accessToken;
  final String refreshToken;

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);
  Map<String, dynamic> toJson() => _$TokenModelToJson(this);
}
