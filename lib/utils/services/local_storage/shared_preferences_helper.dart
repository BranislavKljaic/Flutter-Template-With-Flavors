import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants/shared_preferences_constants.dart';

class SharedPreferencesHelper {
  static void setToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(SharedPreferencesConstants.sharedPreferencesTokenKey, token);
  }

  static void clearToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  static Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(SharedPreferencesConstants.sharedPreferencesTokenKey);
  }

  static void setLanguageCode(String languageCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(SharedPreferencesConstants.sharedPreferencesLanguage, languageCode);
  }

  static Future<String> getLanguageCode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(SharedPreferencesConstants.sharedPreferencesLanguage) ?? 'en';
  }

  static void setTheme(String theme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(SharedPreferencesConstants.sharedPreferencesTheme, theme);
  }

  static Future<String> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(SharedPreferencesConstants.sharedPreferencesTheme) ?? 'light';
  }
}
