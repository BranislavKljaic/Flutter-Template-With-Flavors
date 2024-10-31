import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../features/auth/bloc/auth_cubit.dart';
import '../features/auth/repo/auth_repository.dart';
import '../features/settings/bloc/settings_cubit.dart';
import '../features/settings/repo/settings_repository.dart';

class BlocProvidersRepositories extends StatelessWidget {
  final Widget child;
  final String languageCode;
  final String theme;
  final String? token;

  const BlocProvidersRepositories({
    super.key,
    required this.child,
    required this.languageCode,
    required this.theme,
    required this.token,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(create: (context) => AuthRepository()),
        RepositoryProvider<SettingsRepository>(create: (context) => SettingsRepository()),
      ],
      child: MultiProvider(
        providers: [
          BlocProvider<AuthCubit>(
            create: (context) => AuthCubit(
              authRepository: context.read<AuthRepository>(),
              token: token,
            ),
          ),
          BlocProvider<SettingsCubit>(
            create: (context) => SettingsCubit(languageCode: languageCode, theme: theme),
          ),
        ],
        child: child,
      ),
    );
  }
}
