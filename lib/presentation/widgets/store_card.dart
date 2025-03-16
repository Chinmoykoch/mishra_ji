import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  final String time;
  final String image;
  final String price;
  final String shopName;

  const StoreCard({
    super.key,
    required this.time,
    required this.price,
    required this.image,
    required this.shopName,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.all(8.0).copyWith(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            scale: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              shopName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: theme.textTheme.bodyLarge?.color,
              ),
            ),
          ),
          Container(
            width: 190,
            decoration: BoxDecoration(
              color: isDarkMode ? Colors.grey.shade800 : Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.alarm, color: theme.iconTheme.color),
                  Text(
                    time,
                    style: TextStyle(color: theme.textTheme.bodyMedium?.color),
                  ),
                  const SizedBox(width: 30),
                  Icon(Icons.pedal_bike, color: theme.iconTheme.color),
                  Text(
                    "  INR $price",
                    style: TextStyle(color: theme.textTheme.bodyMedium?.color),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
