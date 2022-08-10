import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

import '../../core/local_storage.dart';
import '../../profile/datasources/profile_local_data_source.dart';
import '../models/token_model.dart';

abstract class IAuthLocalDataSource {
  Future<void> saveToken(TokenModel token);
  TokenModel? get token;
  bool isLoggedIn();
  void saveRememberMe(bool rememberMe);
  bool get rememberMe;

  Future<void> clearLoginSession();
}

class HiveAuthLocalDataSource implements IAuthLocalDataSource {
  HiveAuthLocalDataSource(this._hive);

  final HiveInterface _hive;

  static const String authBox = 'auth-box';

  static const String _authKey = 'auth_key';
  static const String _rememberMeKey = 'remember_me_key';

  @override
  Future<void> saveToken(TokenModel token) async {
    try {
      String encodedJson = json.encode(token.toJson());
      await _hive.box(authBox).put(_authKey, encodedJson);
    } catch (e) {
      rethrow;
    }
  }

  @override
  TokenModel? get token {
    final String? encodedJson = _hive.box(authBox).get(_authKey);
    if (encodedJson == null) {
      return null;
    }
    return TokenModel.fromJson(json.decode(encodedJson));
  }

  @override
  bool isLoggedIn() => _hive.box(authBox).containsKey(_authKey);

  @override
  Future<void> clearLoginSession() async {
    try {
      //Delete authentication box and other user preferences boxes
      await _hive.deleteBoxFromDisk(authBox);
      await _hive.deleteBoxFromDisk(HiveProfileLocalDataSource.profileBox);

      await initHiveStorage();
    } catch (e) {
      rethrow;
    }
  }

  @override
  bool get rememberMe =>
      _hive.box(authBox).get(_rememberMeKey, defaultValue: false);

  @override
  void saveRememberMe(bool rememberMe) {
    _hive.box(authBox).put(_rememberMeKey, rememberMe);
  }
}
