import 'package:flutter/material.dart';
import 'package:mishra_ji/presentation/screens/login.dart';

import 'forgot_veri_code.dart';


class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  OtpState createState() => OtpState();
}

class OtpState extends State<Otp> {
  final TextEditingController _emailController = TextEditingController();
  String? _errorMessage;

  void _validateEmail() {
    const String dummyEmail = 'dummy@email.com'; // Dummy email for testing

    String email = _emailController.text.trim();

    if (email.isEmpty || !_isEmailValid(email)) {
      setState(() {
        _errorMessage = 'Enter a valid email address';
      });
    } else if (email == dummyEmail) {
      setState(() {
        _errorMessage = null;
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Forgot()),
      );
    } else {
      setState(() {
        _errorMessage = 'This email is not registered';
      });
    }
  }

  bool _isEmailValid(String email) {
    String pattern = r'^[^@]+@[^@]+\.[^@]+$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: screenHeight * 0.05),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignIn(storedEmail: "", storedPassword: '')),
                        );
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Text(
                  '01/03',
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            SizedBox(height: screenHeight * 0.02),

            Text(
              'Confirmation Email',
              style: TextStyle(
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: screenHeight * 0.01),

            Text(
              'Enter your email address for verification.',
              style: TextStyle(fontSize: screenWidth * 0.04),
            ),

            SizedBox(height: screenHeight * 0.04),

            Row(
              children: [
                Text(
                  'Email ',
                  style: TextStyle(fontSize: screenWidth * 0.04),
                ),
                Text(
                  '*',
                  style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.red),
                ),
              ],
            ),

            SizedBox(height: screenHeight * 0.01),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Enter Your Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                errorText: _errorMessage,
              ),
            ),

            SizedBox(height: screenHeight * 0.05),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _validateEmail,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Send',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.045,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Confirm extends StatelessWidget {
  const Confirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm Password'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Confirm Password Screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}