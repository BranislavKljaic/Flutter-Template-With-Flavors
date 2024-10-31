import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';

import '../../../config/router/router_paths.dart';

class WelcomeScreen extends StatelessWidget {
  static String envType = dotenv.env['ENVIRONMENT'] ?? 'ENVIRONMENT';

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Environment type: $envType',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          SizedBox(
            width: 200,
            child: FloatingActionButton(
              heroTag: null,
              onPressed: () => context.go(RouterPaths.login),
              child: Text('Login'),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 200,
            child: FloatingActionButton(
              heroTag: null,
              onPressed: () => context.go(RouterPaths.registration),
              child: Text('Sign up'),
            ),
          ),
        ],
      ),
    );
  }
}
