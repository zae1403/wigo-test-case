import 'package:dartz/dartz.dart';

import '../../core/error/server_failure.dart';
import '../entities/user.dart';

abstract class IProfileRepository {
  Future<Either<ServerFailure, User>> getProfile();
}
