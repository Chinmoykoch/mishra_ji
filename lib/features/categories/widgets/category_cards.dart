import 'package:flutter/material.dart';
import 'package:mishra_ji/constants/colors.dart';
import 'package:mishra_ji/constants/fonts.dart';

class CategoryCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const CategoryCard({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors.darkBorder),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              width: 100,
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: textStyles.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
