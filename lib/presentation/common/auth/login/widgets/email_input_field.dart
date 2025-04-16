import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/blocs/login/login_bloc.dart';
import '../../../../../core/validations/auth_validations.dart';
import '../../../../widgets/custom_text_input_field.dart';

class EmailInputField extends StatelessWidget {
  const EmailInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, String>(
      selector: (state) => state.email,
      builder: (context, email) {
        return CustomTextInputField(
          labelText: 'Email',
          prefixIcon: Icons.email_outlined,
          textInputType: TextInputType.emailAddress,
          validator: AuthValidations.validateEmail,
          onChanged: (val) {
            context.read<LoginBloc>().add(EmailChanged(email: val!));
          },
        );
      },
    );
  }
}
