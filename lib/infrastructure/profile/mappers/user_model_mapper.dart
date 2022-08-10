import '../../../domain/profile/entities/user.dart';
import '../models/user_model.dart';

extension UserModelMapper on UserModel {
  User toDomain() {
    return User(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      email: email,
      name: name,
      phoneNumber: phoneNumber,
      username: username,
      gender: gender,
      dateOfBirth: dateOfBirth,
      image: image,
      userAdmin: userAdmin,
    );
  }
}
