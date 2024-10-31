import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc_providers_repositories.dart';
import 'main_widget.dart';

class MyApp extends StatelessWidget {
  final String languageCode;
  final String theme;
  final String? token;

  const MyApp({
    super.key,
    required this.languageCode,
    required this.theme,
    required this.token,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvidersRepositories(
      languageCode: languageCode,
      theme: theme,
      token: token,
      child: ScreenUtilInit(
        designSize: MediaQuery.of(context).size.shortestSide > 600 ? const Size(834, 1194) : const Size(393, 852),
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const MainWidget();
        },
      ),
    );
  }
}
