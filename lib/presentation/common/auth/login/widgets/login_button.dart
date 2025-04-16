import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/blocs/auth/auth_bloc.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../../application/blocs/login/login_bloc.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const LoginButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, bool>(
      selector: (state) => state.isLoading,
      builder: (context, isLoading) {
        return isLoading
            ? CircularProgressIndicator.adaptive()
            : CustomButton(
              buttonText: 'Log In',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  context.read<LoginBloc>().add(
                    LoginSubmitted(authBloc: context.read<AuthBloc>()),
                  );
                }
              },
            );
      },
    );
  }
}
