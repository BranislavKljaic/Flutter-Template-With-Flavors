import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../features/auth/bloc/auth_cubit.dart';
import '../features/settings/bloc/settings_cubit.dart';
import '../main.dart';
import '../styles/themes.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      // Application went to Background
    }

    if (state == AppLifecycleState.resumed) {
      // Application came back to Foreground
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listenWhen: (previousState, currentState) {
            return (previousState is AuthenticatedUser && currentState is UnauthenticatedUser) ||
                (currentState is AuthenticatedUser && previousState is! AuthenticatedUser);
          },
          listener: (context, state) {
            if (state is UnauthenticatedUser) {}

            if (state is AuthenticatedUser) {}

            if (state is AuthInitial) {}
          },
        ),
      ],
      child: MaterialApp.router(
        locale: Locale(context.watch<SettingsCubit>().state.languageCode ?? 'en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: false,
        builder: (context, widget) {
          widget = BotToastInit()(context, widget);

          return widget;
        },
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        themeMode: context.watch<SettingsCubit>().state.theme,
        routerDelegate: mgRouter.routerDelegate,
        routeInformationParser: mgRouter.routeInformationParser,
        routeInformationProvider: mgRouter.routeInformationProvider,
      ),
    );
  }
}
