part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitial;
  const factory AuthState.authenticated({required bool rememberMe}) =
      _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
}
