import 'package:flutter/material.dart';
import 'package:mishra_ji/constants/colors.dart';

final ColorScheme lightColorScheme = ColorScheme.light(
  primary: AppColors.primary,
  secondary: AppColors.accent,
  background: AppColors.lightBackground,
  surface: AppColors.lightCard,
  onPrimary: AppColors.buttonTextPrimary, // Text on Primary Button
  onSecondary: AppColors.buttonTextSecondary, // Text on Secondary Button
  onBackground: AppColors.lightText,
  onSurface: AppColors.lightText,
  error: AppColors.error,
  onError: Colors.white, // Text on Error
);

/// Dark Theme Color Scheme
final ColorScheme darkColorScheme = ColorScheme.dark(
  primary: AppColors.primary,
  secondary: AppColors.accent,
  background: AppColors.darkBackground,
  surface: AppColors.darkCard,
  onPrimary: AppColors.buttonTextPrimary, // Text on Primary Button
  onSecondary: AppColors.buttonTextSecondary, // Text on Secondary Button
  onBackground: AppColors.darkText,
  onSurface: AppColors.darkText,
  error: AppColors.error,
  onError: Colors.white, // Text on Error
);
