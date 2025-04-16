import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/blocs/login/login_bloc.dart';
import '../../../../../core/validations/auth_validations.dart';
import '../../../../widgets/custom_text_input_field.dart';

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, bool>(
      selector: (state) => state.isPasswordVisible,
      builder: (context, isPasswordVisible) {
        return CustomTextInputField(
          labelText: 'Password',
          prefixIcon: Icons.lock_outline,
          obSecureText: !isPasswordVisible,
          suffixIcon:
              isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          validator: AuthValidations.validatePassword,
          onChanged: (val) {
            context.read<LoginBloc>().add(PasswordChanged(password: val!));
          },
          toggleHandler:
              () => context.read<LoginBloc>().add(TogglePasswordVisibility()),
        );
      },
    );
  }
}
