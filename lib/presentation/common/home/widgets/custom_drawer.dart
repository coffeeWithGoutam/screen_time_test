import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routes.dart';
import '../../../../application/blocs/auth/auth_bloc.dart';
import '../../../common/home/widgets/custom_drawer_item.dart';
import '../../../../presentation/common/home/widgets/logout_dialog.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is Authenticated) {
              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  CustomDrawerItem(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icons.home,
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    text: "App Name",
                  ),
                  CustomDrawerItem(
                    onPressed: () {
                      context.pop();
                      LogoutDialog().dialogBox(
                        icon: Icon(Icons.logout, size: 50),
                        context: context,
                        title: "Log Out",
                        message: "Are you sure want to log out the app?",
                        textStyle: TextStyle(fontSize: 14),
                        handler: (context) {
                          context.read<AuthBloc>().add(LogoutEvent());
                          context.goNamed(Routes.kLogin);
                        },
                      );
                    },
                    icon: Icons.logout,
                    text: "Log Out",
                  ),
                ],
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
