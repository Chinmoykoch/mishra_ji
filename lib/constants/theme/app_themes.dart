import 'package:flutter/material.dart';
import 'package:mishra_ji/constants/colors.dart';
import 'package:mishra_ji/constants/fonts.dart';
import 'package:mishra_ji/constants/theme/appbar_theme.dart';
import 'package:mishra_ji/constants/theme/color_schemes.dart';
import 'button_styles.dart';
import 'input_decoration_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: lightColorScheme,
    textTheme: textStyles,
    scaffoldBackgroundColor: AppColors.lightBackground,
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
    scaffoldBackgroundColor: AppColors.darkBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppButtonStyles.primaryActionButton,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: AppButtonStyles.loginButton,
    ),
    textButtonTheme: TextButtonThemeData(style: AppButtonStyles.skipButton),
    appBarTheme: darkAppBarTheme, // Use the dark app bar theme
    inputDecorationTheme: inputDecorationTheme,
  );
}
