import 'package:flutter/material.dart';
import '../models/onboarding_model.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingPage({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: model.title == 'Safe and secure payments'
                ? Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(238, 77, 77, 0.51),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Image.asset(
                        model.imagePath,
                        height: 140,
                        width: 140,
                        fit: BoxFit.contain,
                      ),
                    ),
                  )
                : Image.asset(
                    model.imagePath,
                    height: 200,
                  ),
          ),
          const SizedBox(height: 32),
          Text(
            model.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              model.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
