import 'package:flutter/material.dart';

class PastOrdersWidget extends StatelessWidget {
  final List<String> imageUrls;
  final double price;
  final String status;
  final String? deliveryDate;
  final Color statusColor;
  
  const PastOrdersWidget({
    Key? key,
    required this.imageUrls,
    required this.price,
    required this.status,
    this.deliveryDate,
    required this.statusColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Images
          Row(
            children: imageUrls.map((img) {
              return Padding(
                padding: const EdgeInsets.only(right: 4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    img,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 8),

          // Price and Arrow
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "₹${price.toStringAsFixed(1)}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
          const SizedBox(height: 8),

          
          const SizedBox(height: 4),

          // Status Indicator
          Row(
            children: [
              Text(
                deliveryDate != null ? "Order Delivered at\n$deliveryDate" : "Order Picked Up",
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Icon(Icons.circle, color: statusColor, size: 12),
              const SizedBox(width: 6),
              Text(
                status,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
