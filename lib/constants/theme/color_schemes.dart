import 'package:flutter/material.dart';
import 'package:mishra_ji/constants/colors.dart';

const ColorScheme lightColorScheme = ColorScheme.light(
  primary: AppColors.primary,
  secondary: AppColors.accent,
  surface: AppColors.lightCard,
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
  surface: AppColors.darkCard,
  onPrimary: AppColors.buttonTextPrimary, // Text on Primary Button
  onSecondary: AppColors.buttonTextSecondary,
  onSurface: AppColors.darkText,
  error: AppColors.error,
  onError: Colors.white, // Text on Error
);
