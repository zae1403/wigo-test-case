part of 'login_form_bloc.dart';

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.emailChanged(String email) =
      LoginFormEmailChanged;
  const factory LoginFormEvent.passwordChanged(String password) =
      LoginFormPasswordChanged;
  const factory LoginFormEvent.rememberMeChanged(bool value) =
      LoginFormRememberMeChanged;
  const factory LoginFormEvent.submitted() = LoginFormSubmitted;
}
