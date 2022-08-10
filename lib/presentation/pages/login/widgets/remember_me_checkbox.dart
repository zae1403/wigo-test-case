import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/login_form/login_form_bloc.dart';
import '../../../resources/colors.dart';

class RememberMeCheckbox extends StatelessWidget {
  const RememberMeCheckbox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<LoginFormBloc, LoginFormState>(
          builder: (context, state) {
            return SizedBox(
              height: 24,
              width: 24,
              child: Checkbox(
                value: state.rememberMe,
                tristate: false,
                onChanged: (value) {
                  context
                      .read<LoginFormBloc>()
                      .add(LoginFormEvent.rememberMeChanged(value!));
                },
              ),
            );
          },
        ),
        const SizedBox(width: 4),
        const Text(
          'Remember me',
          style: TextStyle(
            fontSize: 12,
            color: ColorPalette.disabledColor,
          ),
        )
      ],
    );
  }
}
