import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFFF18720); // Orange
  static const Color accent = Color(0xFFFFA726); // Lighter Orange

  // Light Theme Colors
  static const Color lightBackground = Color(0xFFFFFFFF); // Pure White
  static const Color lightSurface = Color(0xFFF5F5F5); // Light Gray Background
  static const Color lightCard = Color(
    0xFFFFFFFF,
  ); // Card Background for Light Mode
  static const Color lightText = Color(0xFF000000); // Black
  static const Color lightIcon = Color(0xFF000000); // Black
  static const Color lightBorder = Color(0xFFE0E0E0); // Light Gray

  // Dark Theme Colors
  static const Color darkBackground = Color(0xFF121212); // Dark Gray
  static const Color darkSurface = Color(0xFF1E1E1E); // Slightly lighter dark
  static const Color darkCard = Color(
    0xFF1E1E1E,
  ); // Card Background for Dark Mode
  static const Color darkText = Color(0xFFFFFFFF); // White
  static const Color darkIcon = Color(0xFFFFFFFF); // White
  static const Color darkBorder = Color(0xFF333333); // Dark Gray

  // Button Colors
  static const Color buttonPrimary = primary;
  static const Color buttonTextPrimary = Colors.white;
  static const Color buttonSecondary = Colors.white;
  static const Color buttonTextSecondary = Colors.black;

  // Alert & Status Colors
  static const Color success = Colors.green;
  static const Color error = Colors.red;
  static const Color warning = Color(0xFFFFC107); // Yellow
}
