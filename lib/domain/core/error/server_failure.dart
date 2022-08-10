import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_failure.freezed.dart';

@freezed
class ServerFailure with _$ServerFailure {
  const factory ServerFailure({required String message}) = _ServerFailure;
  const factory ServerFailure.sessionEnded({required String message}) =
      _ServerFailureSessionEnded;
}
