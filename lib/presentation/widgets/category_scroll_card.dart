import 'package:flutter/material.dart';

class CategoryScrollCard extends StatelessWidget {
  final String image;
  final String category;
  const CategoryScrollCard(
      {super.key, required this.image, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(
              image,
              scale: 4,
            ),
            Text(category),
          ],
        ),
      ),
    );
  }
}
