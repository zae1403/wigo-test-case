import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/login_form/login_form_bloc.dart';
import '../../../widgets/info_label.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InfoLabel(
      label: 'Password',
      child: TextFormField(
        style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
        autofillHints: const [AutofillHints.password],
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            size: 18,
          ),
          hintText: 'Password',
        ),
        onChanged: (value) => context
            .read<LoginFormBloc>()
            .add(LoginFormEvent.passwordChanged(value)),
        onFieldSubmitted: (value) =>
            context.read<LoginFormBloc>().add(const LoginFormEvent.submitted()),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Password tidak boleh kosong';
          }
          return null;
        },
      ),
    );
  }
}
