import 'package:flutter/material.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/prev_btn.dart';

class OrderDetailsScreen extends StatelessWidget {
  final String itemName;
  final String itemImage;
  final double itemPrice;
  final String orderDate;
  final double itemTotal;
  final double discount;
  final double tax;
  final double billTotal;

  const OrderDetailsScreen({
    Key? key,
    required this.itemName,
    required this.itemImage,
    required this.itemPrice,
    required this.orderDate,
    required this.itemTotal,
    required this.discount,
    required this.tax,
    required this.billTotal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 16),
          child: PrevBtn(),
        ),
        title: Text(
          "Order ID",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
       
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Order Info
            Text(
              "Order Delivered on",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              orderDate,
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
            const SizedBox(height: 8),
            Text(
              "₹${billTotal.toStringAsFixed(1)}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Bill Details Section
            const Text(
              "Bill Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  // Selected Item Details
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.asset(
                                itemImage,
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              itemName,
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Text(
                          "₹${itemPrice.toStringAsFixed(1)}",
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  const Divider(),

                  // Bill Summary
                  _buildBillRow("Item Total", itemTotal),
                  _buildBillRow("Discounts", discount, isDiscount: true),
                  _buildBillRow("Taxes", tax),
                  const Divider(),
                  _buildBillRow("Bill Total", billTotal, isBold: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBillRow(String title, double amount, {bool isBold = false, bool isDiscount = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
          Text(
            "${isDiscount ? '-' : ''}₹${amount.toStringAsFixed(1)}",
            style: TextStyle(fontSize: 14, fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
