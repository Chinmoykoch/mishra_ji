import 'package:flutter/material.dart';

class AppButtonStyles {
  // Colors extracted from designs
  static const Color primaryOrange = Color(0xFFF18720);
  static const Color activeBlack = Color(0xFF000000);
  static const Color inactiveGray = Color(0xFFF5F5F5);
  static const Color white = Colors.white;
  static const Color pink = Color(0xFFFF69B4);
  static const Color teal = Color(0xFF40E0D0);
  static const Color red = Color(0xFFCC0000);
  static const Color green = Color(0xFF00CC66);

  // Toggle buttons (Active/Expired in first screen)
  static final ButtonStyle activeToggleButton = ElevatedButton.styleFrom(
    backgroundColor: activeBlack,
    foregroundColor: white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
    textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    elevation: 0,
  );

  static final ButtonStyle inactiveToggleButton = ElevatedButton.styleFrom(
    backgroundColor: inactiveGray,
    foregroundColor: Colors.black54,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
    textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    elevation: 0,
  );

  // Shop Now button (black rounded button in coupon cards)
  static final ButtonStyle shopNowButton = ElevatedButton.styleFrom(
    backgroundColor: activeBlack,
    foregroundColor: white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
    minimumSize: Size(100, 35),
  );

  // Buy coupons button (red button at bottom of first screen)
  static final ButtonStyle buyCouponsButton = ElevatedButton.styleFrom(
    backgroundColor: red,
    foregroundColor: white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
    textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    minimumSize: Size(double.infinity, 45),
  );

  // Login button (outlined button in second screen)
  static final ButtonStyle loginButton = OutlinedButton.styleFrom(
    foregroundColor: Colors.black87,
    side: BorderSide(color: Colors.black12),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),
    minimumSize: Size(120, 45),
  );

  // Get Started/Next button (orange button in second and third screens)
  static final ButtonStyle primaryActionButton = ElevatedButton.styleFrom(
    backgroundColor: primaryOrange,
    foregroundColor: white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    minimumSize: Size(120, 45),
  );

  // Skip button (text button in second and third screens)
  static final ButtonStyle skipButton = TextButton.styleFrom(
    foregroundColor: Colors.blue,
    textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
  );

  // Order/Payment button (orange wide button in Categories and Checkout screens)
  static final ButtonStyle wideActionButton = ElevatedButton.styleFrom(
    backgroundColor: primaryOrange,
    foregroundColor: white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 24),
    textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    minimumSize: Size(double.infinity, 50),
  );

  // Scan & Pay button (orange wide button in UPI Payment screen)
  static final ButtonStyle scanPayButton = ElevatedButton.styleFrom(
    backgroundColor: primaryOrange,
    foregroundColor: white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 24),
    textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    minimumSize: Size(double.infinity, 50),
  );

  // Cancel button (red wide button in UPI Payment screen)
  static final ButtonStyle cancelPaymentButton = ElevatedButton.styleFrom(
    backgroundColor: red,
    foregroundColor: white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 24),
    textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    minimumSize: Size(double.infinity, 50),
  );

  // Add Location/Add Card button (text button with green text in Checkout screen)
  static final ButtonStyle addActionButton = TextButton.styleFrom(
    foregroundColor: green,
    textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
  );

  // Category card button (dark outlined rounded cards from Categories screen)
  static final ButtonStyle categoryCardButton = OutlinedButton.styleFrom(
    foregroundColor: white,
    backgroundColor: Colors.transparent,
    side: BorderSide(color: Colors.white24),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: white,
    ),
  );

  // Edit button (pencil icon buttons in Checkout screen)
  static final ButtonStyle editButton = IconButton.styleFrom(
    foregroundColor: primaryOrange,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );

  // Selection radio button style (for address and payment methods)
  static final ButtonStyle radioSelectionButton = IconButton.styleFrom(
    foregroundColor: primaryOrange,
    backgroundColor: Colors.transparent,
    shape: CircleBorder(side: BorderSide(color: primaryOrange)),
  );
}
