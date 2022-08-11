// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      email: json['email'] as String,
      name: json['name'] as String,
      phoneNumber: json['phone_number'] as String?,
      username: json['username'] as String,
      gender: json['gender'],
      dateOfBirth: DateTime.parse(json['date_of_birth'] as String),
      image: json['image'] as String,
      userAdmin: json['user_admin'],
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'email': instance.email,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'username': instance.username,
      'gender': instance.gender,
      'date_of_birth': instance.dateOfBirth.toIso8601String(),
      'image': instance.image,
      'user_admin': instance.userAdmin,
    };
