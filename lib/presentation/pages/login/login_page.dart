import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/login_form/login_form_bloc.dart';
import '../../../injector.dart';
import '../../widgets/header_view.dart';
import '../../widgets/hide_focus.dart';
import 'widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return HideFocus(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(30)
                    .copyWith(top: MediaQuery.of(context).viewPadding.top + 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeaderView(
                      title: Text('Login'),
                      subtitle: Text('Sign in to continue'),
                    ),
                    const SizedBox(height: 70),
                    BlocProvider(
                      create: (context) => sl<LoginFormBloc>(),
                      child: const LoginForm(),
                    ),
                  ],
                ),
              ),
            ),
            LinkToRegisterPageButton(theme: theme),
          ],
        ),
      ),
    );
  }
}

class LinkToRegisterPageButton extends StatelessWidget {
  const LinkToRegisterPageButton({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Text.rich(
        TextSpan(
          text: 'Don\'t have an account? ',
          style: TextStyle(
            color: theme.colorScheme.onSurface,
            fontSize: 12,
          ),
          children: [
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: theme.colorScheme.primary,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ),
      ),
    );
  }
}
