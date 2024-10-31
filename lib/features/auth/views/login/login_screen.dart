import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/router/router_paths.dart';
import '../../bloc/auth_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 150,
          child: FloatingActionButton(
            onPressed: () {
              context.read<AuthCubit>().login();
              context.go(RouterPaths.home);
            },
            child: Text('Home screen'),
          ),
        ),
      ),
    );
  }
}
