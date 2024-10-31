import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

abstract class Themes {
  static ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColorsDark.primaryColor,
      onPrimary: AppColorsDark.onPrimaryColor,
      secondary: AppColorsDark.secondaryColor,
      onSecondary: AppColorsDark.onSecondaryColor,
      error: AppColorsDark.errorColor,
      onError: AppColorsDark.onErrorColor,
      tertiary: Colors.green,
      surface: AppColorsDark.surfaceColor,
      onSurface: AppColorsDark.onSurfaceColor,
    ),
    useMaterial3: true,
    fontFamily: GoogleFonts.roboto().fontFamily,
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColorsLight.primaryColor,
      primaryContainer: Colors.green,
      onPrimary: AppColorsLight.onPrimaryColor,
      secondary: AppColorsLight.secondaryColor,
      onSecondary: AppColorsLight.onSecondaryColor,
      error: AppColorsLight.errorColor,
      onError: AppColorsLight.onErrorColor,
      tertiary: Colors.green,
      surface: AppColorsLight.surfaceColor,
      onSurface: AppColorsLight.onSurfaceColor,
    ),
    fontFamily: GoogleFonts.roboto().fontFamily,
  );
}
