import 'package:flutter/material.dart';

// Light theme input decoration
final InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  // Text field general styling
  filled: true,
  fillColor: Colors.grey[100],

  // Border styling - rounded with very light outline
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: Colors.grey[300]!, width: 0.5),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: Colors.grey[300]!, width: 0.5),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: Colors.orange, width: 1.0),
  ),

  // Error state styling
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: Colors.red[300]!, width: 1.0),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: Colors.red[500]!, width: 1.5),
  ),
  errorStyle: TextStyle(
    color: Colors.red[700],
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),

  // Content padding - more compact to match app
  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),

  // Text styling
  hintStyle: TextStyle(
    color: Colors.grey[600],
    fontSize: 14,
    fontWeight: FontWeight.normal,
  ),

  // Icon styling for prefix/suffix
  prefixIconColor: Colors.grey[600],
  suffixIconColor: Colors.grey[600],

  // Make the field compact
  isDense: true,

  // Focus color when the field is selected
  focusColor: Colors.white,

  // Floating label behavior
  floatingLabelBehavior: FloatingLabelBehavior.auto,
  floatingLabelStyle: TextStyle(
    color: Colors.orange,
    fontWeight: FontWeight.w500,
  ),
);

// Dark theme input decoration with true black background and orange accents
final InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
  // Text field general styling
  filled: true,
  fillColor: Color(0xFF121212), // True black background

  // Border styling - rounded with distinct outline
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: Colors.grey[800]!, width: 0.5),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: Colors.grey[800]!, width: 0.5),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: Colors.orange, width: 1.0),
  ),

  // Error state styling
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: Colors.redAccent[100]!, width: 1.0),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: Colors.redAccent[400]!, width: 1.5),
  ),
  errorStyle: TextStyle(
    color: Colors.redAccent[100],
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),

  // Content padding - more compact to match app
  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),

  // Text styling
  hintStyle: TextStyle(
    color: Colors.grey[400],
    fontSize: 14,
    fontWeight: FontWeight.normal,
  ),

  // Icon styling for prefix/suffix
  prefixIconColor: Colors.grey[300],
  suffixIconColor: Colors.grey[300],

  // Make the field compact
  isDense: true,

  // Focus color when the field is selected
  focusColor: Colors.black,

  // Floating label behavior
  floatingLabelBehavior: FloatingLabelBehavior.auto,
  floatingLabelStyle: TextStyle(
    color: Colors.orange,
    fontWeight: FontWeight.w500,
  ),
);
