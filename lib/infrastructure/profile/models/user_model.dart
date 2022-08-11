import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(
    fieldRename: FieldRename.snake, explicitToJson: true, createToJson: true)
class UserModel {
  UserModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.email,
    required this.name,
    required this.phoneNumber,
    required this.username,
    required this.gender,
    required this.dateOfBirth,
    required this.image,
    required this.userAdmin,
  });

  final int id;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  final String email;
  final String name;
  final String? phoneNumber;
  final String username;
  final dynamic gender;
  final DateTime dateOfBirth;
  final String image;
  final dynamic userAdmin;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
