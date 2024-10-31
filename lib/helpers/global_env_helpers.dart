import 'package:flutter_dotenv/flutter_dotenv.dart';

class GlobalEnvHelpers {
  void loadEnvVariables() async {
    const flavor = String.fromEnvironment('FLAVOR');

    switch (flavor) {
      case 'dev':
        await dotenv.load(fileName: '.env.dev');
        break;
      case 'staging':
        await dotenv.load(fileName: '.env.staging');
        break;
      default:
        await dotenv.load(fileName: '.env');
    }
  }
}
