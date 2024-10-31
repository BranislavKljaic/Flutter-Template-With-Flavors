import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'config/router/router.dart';
import 'config/router/router_paths.dart';
import 'features/auth/bloc/auth_cubit.dart';
import 'helpers/global_env_helpers.dart';
import 'main/app_widget.dart';
import 'utils/services/local_storage/shared_preferences_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  GlobalEnvHelpers().loadEnvVariables();
  String languageCode = await SharedPreferencesHelper.getLanguageCode();
  String theme = await SharedPreferencesHelper.getTheme();
  String? token = await SharedPreferencesHelper.getToken();

  runApp(MyApp(
    languageCode: languageCode,
    theme: theme,
    token: token,
  ));
}

final GoRouter mgRouter = GoRouter(
  observers: [BotToastNavigatorObserver()],
  initialLocation: RouterPaths.home,
  routes: appRoutes,
  routerNeglect: true,
  redirect: (context, routerState) {
    if (routerState.fullPath == RouterPaths.home && context.read<AuthCubit>().state is! AuthenticatedUser) {
      return RouterPaths.welcome;
    }

    return null;
  },
);
