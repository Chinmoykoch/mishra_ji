import 'package:flutter/material.dart';
import 'button_styles.dart';
import 'color_schemes.dart';
import 'text_styles.dart';
import 'app_bar_theme.dart'; // This imports both appBarTheme and darkAppBarTheme
import 'input_decoration_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: lightColorScheme,
    textTheme: textStyles,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppButtonStyles.primaryActionButton,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: AppButtonStyles.loginButton,
    ),
    textButtonTheme: TextButtonThemeData(style: AppButtonStyles.skipButton),
    appBarTheme: appBarTheme, // Use the light app bar theme
    inputDecorationTheme: inputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: darkColorScheme,
    textTheme: textStyles,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppButtonStyles.primaryActionButton,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: AppButtonStyles.loginButton,
    ),
    textButtonTheme: TextButtonThemeData(style: AppButtonStyles.skipButton),
    appBarTheme: darkAppBarTheme,
    inputDecorationTheme:
        darkInputDecorationTheme, // Use the dark app bar theme
  );
}
