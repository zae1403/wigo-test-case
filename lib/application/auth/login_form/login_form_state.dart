part of 'login_form_bloc.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const LoginFormState._();
  const factory LoginFormState({
    required GlobalKey<FormState> formKey,
    required String emailAddress,
    required String password,
    required bool rememberMe,

    ///for showing loading indicator
    required bool isSubmitting,

    ///for showing auto-validation input fields and show error messages
    required bool showErrorMessages,

    ///for showing reponses from infrastructure layer
    required Option<Either<ServerFailure, Unit>> loginFailureOrSuccessOption,
  }) = _LoginFormState;

  factory LoginFormState.initial() => LoginFormState(
        formKey: GlobalKey<FormState>(),
        emailAddress: '',
        password: '',
        rememberMe: false,
        isSubmitting: false,
        showErrorMessages: false,
        loginFailureOrSuccessOption: none(),
      );

  bool get isFormFilled => emailAddress.isNotEmpty && password.isNotEmpty;
}
