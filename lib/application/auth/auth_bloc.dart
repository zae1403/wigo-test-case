// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth/usecase/get_login_status.dart';
import '../../domain/auth/usecase/get_remember_me.dart';
import '../../domain/auth/usecase/sign_out.dart';
import '../../domain/core/params/no_param.dart';
import '../core/debounce.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this._getLoginStatus,
    this._getRememberMe,
    this._signOut,
  ) : super(const AuthState.initial()) {
    on<AuthCheckRequested>(_onAuthCheckRequested);
    on<SignedOut>(
      _onSignedOut,
      transformer: debounce(const Duration(milliseconds: 500)),
    );
  }

  final GetLoginStatus _getLoginStatus;
  final GetRememberMe _getRememberMe;
  final SignOut _signOut;

  void _onAuthCheckRequested(
      AuthCheckRequested event, Emitter<AuthState> emit) async {
    final response = await _getLoginStatus(const NoParams());

    bool rememberMe = false;

    if (response.isRight()) {
      final isAuthenticated = response.getOrElse(() => false);
      if (isAuthenticated) {
        var result = await _getRememberMe(const NoParams());
        rememberMe = result.getOrElse(() => false);
      }
    }

    emit(
      response.fold(
        (l) => const AuthState.unauthenticated(),
        (isLoggedIn) => isLoggedIn
            ? AuthState.authenticated(rememberMe: rememberMe)
            : const AuthState.unauthenticated(),
      ),
    );
  }

  void _onSignedOut(SignedOut event, Emitter<AuthState> emit) async {
    var result = await _signOut(const NoParams());
    emit(result.fold(
      (failure) => state,
      (success) => const AuthState.unauthenticated(),
    ));
  }
}
