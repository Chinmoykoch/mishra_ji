import 'package:flutter/material.dart';
import '../color_styles.dart';

/// Light Theme Color Scheme
const ColorScheme lightColorScheme = ColorScheme.light(
  primary: AppColors.primary,
  secondary: AppColors.accent,
  surface: AppColors.lightSurface,
  onPrimary: AppColors.buttonTextPrimary, // Text on Primary Button
  onSecondary: AppColors.buttonTextSecondary,
  onSurface: AppColors.lightText,
  error: AppColors.error,
  onError: Colors.white, // Text on Error
);

/// Dark Theme Color Scheme
const ColorScheme darkColorScheme = ColorScheme.dark(
  primary: AppColors.primary,
  secondary: AppColors.accent,
  surface: AppColors.darkSurface,
  onPrimary: AppColors.buttonTextPrimary, // Text on Primary Button
  onSecondary: AppColors.buttonTextSecondary,
  onSurface: AppColors.darkText,
  error: AppColors.error,
  onError: Colors.white, // Text on Error
);
