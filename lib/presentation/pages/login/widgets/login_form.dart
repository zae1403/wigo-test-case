import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/auth_bloc.dart';
import '../../../../application/auth/login_form/login_form_bloc.dart';
import '../../../widgets/snackbars.dart';
import 'email_textfield.dart';
import 'login_button.dart';
import 'password_textfield.dart';
import 'remember_me_checkbox.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginFormBloc, LoginFormState>(
      listener: (context, state) {
        state.loginFailureOrSuccessOption.fold(
          () => null,
          (result) => result.fold(
            (failure) => ScaffoldMessenger.of(context)
                .showSnackBar(FailureSnackBar(message: failure.message)),
            (success) => context
                .read<AuthBloc>()
                .add(const AuthEvent.authCheckRequested()),
          ),
        );
      },
      child: BlocBuilder<LoginFormBloc, LoginFormState>(
        builder: (context, state) {
          return AutofillGroup(
            child: Form(
              key: state.formKey,
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  EmailTextField(),
                  SizedBox(height: 20),
                  PasswordTextField(),
                  SizedBox(height: 20),
                  RememberMeCheckbox(),
                  SizedBox(height: 30),
                  LoginButton(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
