import 'package:flutter/material.dart';
import 'package:mishra_ji/constants/theme/app_themes.dart';
import 'package:mishra_ji/presentation/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mishra Ji',
      //debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      //theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const Signup(),
      theme: ThemeData(
        primaryColor: const Color(0xFFFF8C37),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF8C37),
          primary: const Color(0xFFFF8C37),
        ),
        fontFamily: 'Poppins',
        //fontFamily: 'PlusJakartaSans',
        scaffoldBackgroundColor: Colors.white,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //initialRoute: '/',
      // routes: {
      //   '/': (context) => const SplashScreen(),
      //   '/onboarding': (context) => const OnboardingScreen(),
      // },
    );
  }
}
