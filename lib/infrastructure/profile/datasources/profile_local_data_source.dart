import 'dart:convert';

import 'package:hive_flutter/adapters.dart';

import '../models/user_model.dart';

abstract class IProfileLocalDataSource {
  Future<void> saveUser(UserModel token);
  UserModel? get user;
}

class HiveProfileLocalDataSource implements IProfileLocalDataSource {
  static const String profileBox = 'profile-box';
  static const String _profileKey = 'profile_key';

  const HiveProfileLocalDataSource(this._hive);

  final HiveInterface _hive;

  @override
  Future<void> saveUser(UserModel user) async {
    String encodedJson = json.encode(user.toJson());
    await _hive.box(profileBox).put(_profileKey, encodedJson);
  }

  @override
  UserModel? get user {
    final String? encodedJson = _hive.box(profileBox).get(_profileKey);
    if (encodedJson == null) {
      return null;
    }
    return UserModel.fromJson(json.decode(encodedJson));
  }
}
