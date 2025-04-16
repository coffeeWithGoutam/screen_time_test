import 'package:go_router/go_router.dart';
import 'package:screen_time_test/presentation/child/widgets/custom_device_lock.dart';
import 'package:screen_time_test/presentation/common/security/security_screen.dart';
import 'package:screen_time_test/presentation/common/splash/splash_screen.dart';

import '../presentation/common/auth/login/login_screen.dart';
import '../presentation/common/home/home_screen.dart';

class Routes {
  Routes._();

  // All Routes Names
  static const String kSplash = "/";
  static const String kLogin = "/login";
  static const String kSecuirity = "/security";
  static const String kDeviceLock = "/blocked";
  static const String kHome = "/home";

  static final router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        name: kSplash,
        pageBuilder:
            (context, state) => const NoTransitionPage(child: SplashScreen()),
      ),
      GoRoute(
        path: "/login",
        name: kLogin,
        pageBuilder: (context, state) => NoTransitionPage(child: LoginScreen()),
      ),

      GoRoute(
        path: "/security",
        name: kSecuirity,
        pageBuilder:
            (context, state) => NoTransitionPage(child: SecurityScreen()),
      ),
      GoRoute(
        path: "/home",
        name: kHome,
        pageBuilder: (context, state) => NoTransitionPage(child: HomeScreen()),
      ),
      GoRoute(
        path: "/blocked",
        name: kDeviceLock,
        pageBuilder:
            (context, state) => NoTransitionPage(child: CustomDeviceLock()),
      ),
    ],
  );
}
