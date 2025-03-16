import 'package:flutter/material.dart';
import 'package:mishra_ji/constants/colors.dart';
import 'package:mishra_ji/presentation/screens/shop_details_screen.dart';
import 'package:mishra_ji/presentation/widgets/category_scroll_card.dart';
import 'package:mishra_ji/presentation/widgets/store_card.dart';

import '../widgets/searchbar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Home",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.color, // Adapts to theme
                  ),
                ),
                Text(
                  "Hyderabad",
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.color, // Adapts to theme
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SearchBarWidget(),
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => const CategoryScrollCard(
                    image: "assets/images/shopimage1.png",
                    category: "Groceries",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Popular Shops",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                  itemBuilder: (context, index) => const CategoryScrollCard(
                    image: "assets/images/shopimage1.png",
                    category: "Groceries",
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Trust Gaining Shops",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(), // Prevents nested scrolling issues
                itemCount: 2,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShopDetailsScreen(
                            shopName: "Mishra Ji - Hyderabad",
                            time: "5-10",
                            price: "60.00",
                            image: "assets/images/shopimage1.png",
                          ),
                        ));
                  },
                  child: const StoreCard(
                    shopName: "Mishra Ji - Hyderabad",
                    time: "5-10",
                    price: "60.00",
                    image: "assets/images/shopimage1.png",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
