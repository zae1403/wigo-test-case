import 'package:hive_flutter/hive_flutter.dart';

import '../auth/datasources/auth_local_data_source.dart';
import '../profile/datasources/profile_local_data_source.dart';

Future<void> initHiveStorage() async {
  await Hive.initFlutter();
  _registerHiveAdapter();
  await _initHiveBox();
}

void _registerHiveAdapter() {}

Future<void> _initHiveBox() async {
  await Hive.openBox(HiveAuthLocalDataSource.authBox);
  await Hive.openBox(HiveProfileLocalDataSource.profileBox);
}
