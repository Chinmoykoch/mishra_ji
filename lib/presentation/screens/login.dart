
import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:mishra_ji/presentation/screens/signup.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'conformation_email.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key, required String storedEmail, required String storedPassword});

  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _obscureText = true;

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    final emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }

  void _signIn() {
    if (_formKey.currentState!.validate()) {
      final String enteredEmail = _emailController.text;
      final String enteredPassword = _passwordController.text;

      final String? storedEmail = ModalRoute.of(context)?.settings.arguments as String?;
      final String? storedPassword = ModalRoute.of(context)?.settings.arguments as String?;

      if (enteredEmail == storedEmail && enteredPassword == storedPassword) {
        developer.log('Error occurred', name: 'LoginScreen');

      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Email is not registered')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/splash_logo.png', height: 60),
              const SizedBox(height: 24),
              const Text('Login',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );
                    },
                    child: const Text('Signup',
                        style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Email *',
                          style: TextStyle(color: Colors.black)),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      validator: _validateEmail,
                    ),
                    const SizedBox(height: 16),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Password *',
                          style: TextStyle(color: Colors.black)),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        hintStyle: const TextStyle(color: Colors.grey),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      validator: _validatePassword,
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Otp(),
                            ),
                          );
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: _signIn,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                        ),
                        child: const Text('Login',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Login with Google',
                                style: TextStyle(color: Colors.black)),
                            SizedBox(width: 8),
                            Icon(FontAwesomeIcons.google, color: Colors.red),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text.rich(
                      TextSpan(
                        text: 'By login, you agree to our ',
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Privacy Policy ',
                            style: TextStyle(color: Colors.blue),
                          ),
                          TextSpan(
                            text: 'and ',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Terms & Conditions.',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
