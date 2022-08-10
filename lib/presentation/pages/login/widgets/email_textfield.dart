import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/login_form/login_form_bloc.dart';
import '../../../utils/extensions.dart';
import '../../../widgets/info_label.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoLabel(
      label: 'Email Address',
      child: TextFormField(
        style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        autofillHints: const [AutofillHints.email],
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.email,
            size: 18,
          ),
          hintText: 'Email',
        ),
        onChanged: (value) => context
            .read<LoginFormBloc>()
            .add(LoginFormEvent.emailChanged(value)),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Email tidak boleh kosong';
          } else if (!value.isEmail) {
            return 'Email tidak valid';
          }
          return null;
        },
      ),
    );
  }
}
