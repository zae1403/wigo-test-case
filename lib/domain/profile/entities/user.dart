import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required int id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String email,
    required String name,
    required dynamic phoneNumber,
    required String username,
    required dynamic gender,
    required DateTime dateOfBirth,
    required String image,
    required dynamic userAdmin,
  }) = _User;
}
