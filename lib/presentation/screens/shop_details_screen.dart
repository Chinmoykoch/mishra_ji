import 'package:flutter/material.dart';
import 'package:mishra_ji/presentation/widgets/product_card.dart';
import 'package:mishra_ji/presentation/widgets/store_card.dart';
import '../widgets/searchbar_widget.dart';

class ShopDetailsScreen extends StatelessWidget {
  final String time;
  final String image;
  final String price;
  final String shopName;
  const ShopDetailsScreen(
      {super.key,
      required this.time,
      required this.image,
      required this.price,
      required this.shopName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: BackButton(
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StoreCard(
                time: time, price: price, image: image, shopName: shopName),
            const SearchBarWidget(),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                "Hourly Parchased Item",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Image.asset(
                "assets/images/shopimage1.png",
                scale: 0.5,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => const ProductCard(
                    image: "assets/images/shopimage1.png", name: "Product"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Popular Shops",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "SEE ALL",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => const ProductCard(
                    image: "assets/images/shopimage1.png", name: "Product"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Popular Shops",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "SEE ALL",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => const ProductCard(
                    image: "assets/images/shopimage1.png", name: "Product"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
