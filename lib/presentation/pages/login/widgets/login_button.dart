import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/login_form/login_form_bloc.dart';
import '../../../widgets/submit_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: SubmitButton(
            isLoading: state.isSubmitting,
            textButton: 'Sign In',
            onPressed: state.isFormFilled
                ? () => context
                    .read<LoginFormBloc>()
                    .add(const LoginFormEvent.submitted())
                : null,
          ),
        );
      },
    );
  }
}
