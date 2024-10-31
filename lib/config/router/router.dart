import 'package:go_router/go_router.dart';

import '../../features/auth/views/login/login_screen.dart';
import '../../features/auth/views/signup/signup_screen.dart';
import '../../features/home/views/home_screen.dart';
import '../../features/welcome/views/welcome_screen.dart';
import 'router_paths.dart';

final List<GoRoute> appRoutes = [
  GoRoute(
    path: '/${RouterPages.welcome}',
    name: RouterPages.welcome,
    builder: (context, state) => const WelcomeScreen(),
    routes: [
      GoRoute(
        path: RouterPages.registration,
        name: RouterPages.registration,
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: RouterPages.login,
        name: RouterPages.login,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  ),
  GoRoute(
    path: RouterPaths.home,
    name: RouterPages.home,
    builder: (context, state) => const HomeScreen(),
  )
];
