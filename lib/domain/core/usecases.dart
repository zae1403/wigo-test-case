import 'package:dartz/dartz.dart';
import 'error/server_failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<ServerFailure, Type>> call(Params params);
}
