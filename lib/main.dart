import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screen_time_test/application/blocs/auth/auth_bloc.dart';
import 'package:screen_time_test/application/cubits/permission/permission_cubit.dart';
import 'package:screen_time_test/config/routes.dart';
import 'package:screen_time_test/core/utils/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await setup();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<PermissionCubit>()),
        BlocProvider(
          create: (context) => sl<AuthBloc>()..add(CheckLoggedInEvent()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Screen Lock",
      routerConfig: Routes.router,
      theme: ThemeData(useMaterial3: true, primarySwatch: Colors.blue),
    );
  }
}
