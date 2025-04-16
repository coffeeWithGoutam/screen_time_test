import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:screen_time_test/core/utils/responsive.dart';

import '../../../../config/routes.dart';
import '../../../../application/blocs/login/login_bloc.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/styles.dart';
import '../../../../core/utils/service_locator.dart';
import '../../../../core/utils/ui_utils.dart';
import 'widgets/email_input_field.dart';
import 'widgets/login_button.dart';
import 'widgets/password_input_field.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(loginUseCase: sl()),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: AppColors.kBackgroundColor),
          height: context.rh(),
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.all(20),
              child: BlocListener<LoginBloc, LoginState>(
                listenWhen: (p, c) => p.loginResult != c.loginResult,
                listener: (context, state) {
                  state.loginResult.fold(
                    () => null,
                    (either) => either.fold(
                      (failure) {
                        UiUtils.showErrorMessage(msg: failure.message);
                      },
                      (authEntity) {
                        _formKey.currentState?.reset();
                        UiUtils.showSuccessMessage(msg: authEntity.message);
                        context.pushReplacementNamed(Routes.kSecuirity);
                      },
                    ),
                  );
                },
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _formKey,
                  child: Column(
                    spacing: context.setRh(0.015),
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UiUtils.kAppBar(context),
                      SizedBox(height: context.setRh(0.2)),
                      EmailInputField(),
                      PasswordInputField(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: AppStyles.kForgetPasswordStyle,
                          ),
                        ),
                      ),
                      LoginButton(formKey: _formKey),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
