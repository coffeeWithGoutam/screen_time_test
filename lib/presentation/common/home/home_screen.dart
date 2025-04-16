import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/blocs/auth/auth_bloc.dart';
import '../../child/child_home_screen.dart';
import '../../parent/parent_home/parent_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    debugPrint("Home Screen");
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is Authenticated) {
            final isChild = state.role == 'child'.toLowerCase();
            return isChild ? ChildHomeScreen() : ParentHomeScreen();
          }else if(state is AuthInitial){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Center(
            child: SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
