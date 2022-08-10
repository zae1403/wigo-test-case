// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/param/login_params.dart';
import '../../../domain/auth/usecase/sign_in_with_email.dart';
import '../../../domain/core/error/server_failure.dart';
import '../../core/debounce.dart';

part 'login_form_bloc.freezed.dart';
part 'login_form_event.dart';
part 'login_form_state.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final SignInWithEmail _signInWithEmail;
  LoginFormBloc(
    this._signInWithEmail,
  ) : super(LoginFormState.initial()) {
    on<LoginFormEmailChanged>(_onEmailChanged);
    on<LoginFormPasswordChanged>(_onPasswordChanged);
    on<LoginFormRememberMeChanged>(_onRememberMeChanged);
    on<LoginFormSubmitted>(_onSubmitted,
        transformer: debounce(const Duration(milliseconds: 500)));
  }

  void _onEmailChanged(
      LoginFormEmailChanged event, Emitter<LoginFormState> emit) {
    emit(state.copyWith(
      emailAddress: event.email,
      loginFailureOrSuccessOption: none(),
    ));
  }

  void _onPasswordChanged(
      LoginFormPasswordChanged event, Emitter<LoginFormState> emit) {
    emit(state.copyWith(
      password: event.password,
      loginFailureOrSuccessOption: none(),
    ));
  }

  void _onRememberMeChanged(
      LoginFormRememberMeChanged event, Emitter<LoginFormState> emit) {
    emit(state.copyWith(
      rememberMe: event.value,
      loginFailureOrSuccessOption: none(),
    ));
  }

  Future<void> _onSubmitted(
      LoginFormSubmitted event, Emitter<LoginFormState> emit) async {
    Either<ServerFailure, Unit>? authFailureOrSuccess;

    bool isValidated = state.formKey.currentState!.validate();

    if (isValidated) {
      emit(state.copyWith(
        isSubmitting: true,
        loginFailureOrSuccessOption: none(),
      ));

      authFailureOrSuccess = await _signInWithEmail(LoginParams(
        email: state.emailAddress,
        password: state.password,
        rememberMe: state.rememberMe,
      ));
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      loginFailureOrSuccessOption: optionOf(authFailureOrSuccess),
    ));
  }
}
