// lib/screens/splash_screen.dart
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    // Check if onboarding has been completed
    final prefs = await SharedPreferences.getInstance();
    final onboardingComplete = prefs.getBool('onboardingComplete') ?? false;

    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacementNamed(
          context, onboardingComplete ? '/home' : '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.white,
              Color(0xFFFFC088),
              Color(0xFFFF8C37),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/splash_logo.png',
                height: 120,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
