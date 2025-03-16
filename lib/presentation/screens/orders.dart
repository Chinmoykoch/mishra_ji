import 'package:flutter/material.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/past_orders_widget.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/prev_btn.dart';
import 'order_details_screen.dart'; // Import the OrderDetailsScreen

class Orders extends StatelessWidget {
  final List<Map<String, dynamic>> orders = [
    {
      "imageUrls": [
        "assets/images/mango.png",
        "assets/images/avocado.png",
        "assets/images/cauliflower.png"
      ],
      "price": 167.7,
      "status": "On Process",
      "statusColor": Colors.yellow,
      "deliveryDate": null,
    },
    {
      "imageUrls": [
        "assets/images/mango.png",
        "assets/images/avocado.png",
        "assets/images/cauliflower.png"
      ],
      "price": 167.7,
      "status": "Delivered",
      "statusColor": Colors.green,
      "deliveryDate": "18 Feb 2025",
    },
    {
      "imageUrls": [
        "assets/images/mango.png",
        "assets/images/avocado.png",
        "assets/images/cauliflower.png"
      ],
      "price": 167.7,
      "status": "On Process",
      "statusColor": Colors.yellow,
      "deliveryDate": null,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: PrevBtn(),
        ),
        title: const Text(
          "Orders",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          children: orders.map((order) {
            return GestureDetector(
              onTap: () {
                // Navigate to OrderDetailsScreen with details
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetailsScreen(
                      itemName: "Order Items", // Generic title
                      itemImage: order['imageUrls'][0], // First image as main image
                      itemPrice: order['price'],
                      orderDate: order['deliveryDate'] ?? "Processing",
                      itemTotal: 173.7,
                      discount: 16,
                      tax: 10,
                      billTotal: order['price'],
                    ),
                  ),
                );
              },
              child: PastOrdersWidget(
                imageUrls: order['imageUrls'],
                price: order['price'],
                status: order['status'],
                statusColor: order['statusColor'],
                deliveryDate: order['deliveryDate'],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
