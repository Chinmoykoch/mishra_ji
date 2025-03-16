import 'package:flutter/material.dart';
import 'package:mishra_ji/constants/colors.dart';
import 'package:mishra_ji/constants/fonts.dart';
import 'package:mishra_ji/features/categories/screens/trending_screen.dart';
import 'package:mishra_ji/features/categories/widgets/category_cards.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  final List<Map<String, String>> categories = const [
    {"image": "assets/images/shopimage1.png", "title": "Groceries"},
    {"image": "assets/images/shopimage1.png", "title": "Snacks and drinks"},
    {"image": "assets/images/shopimage1.png", "title": "Pharmacy"},
    {"image": "assets/images/shopimage1.png", "title": "Home Decor"},
    {"image": "assets/images/shopimage1.png", "title": "Beauty"},
    {"image": "assets/images/shopimage1.png", "title": "Household Essentials"},
    {"image": "assets/images/shopimage1.png", "title": "Electronics"},
    {"image": "assets/images/shopimage1.png", "title": "Fashion"},
  ];

  final List<Map<String, String>> categorieDetails = const [
    {
      "image": "assets/images/shopimage1.png",
      "title": "Kachi Ghani Mustard Oil",
      "sale": "120.00",
      "original": "186.00"
    },
    {
      "image": "assets/images/shopimage1.png",
      "title": "Organic Harvest Rose",
      "sale": "108.50",
      "original": "200.00"
    },
    {
      "image": "assets/images/shopimage1.png",
      "title": "Nestle Maggie Instant Noodle",
      "sale": "38.45",
      "original": "42.75"
    },
    {
      "image": "assets/images/shopimage1.png",
      "title": "Apples 1kg",
      "sale": "98.00",
      "original": "122.00"
    },
    {
      "image": "assets/images/shopimage1.png",
      "title": "Amul Taza Homogenic",
      "sale": "38.45",
      "original": "42.75"
    },
    {
      "image": "assets/images/shopimage1.png",
      "title": "Parle Hide N Seek Biscuit",
      "sale": "38.45",
      "original": "42.75"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            isDarkMode ? AppColors.darkBackground : AppColors.lightBackground,
        leading: BackButton(
          color: isDarkMode ? AppColors.lightSurface : AppColors.darkSurface,
        ),
        title: Text(
          "Categories",
          style: textStyles.headlineMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.5,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (index < categorieDetails.length) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryDetailScreen(
                              categoryTitle: categorieDetails[index]["title"] ??
                                  "No title",
                              imagePath: categorieDetails[index]["image"] ??
                                  "assets/images/default.png",
                              salePrice:
                                  categorieDetails[index]["sale"] ?? "0.00",
                              originalPrice:
                                  categorieDetails[index]["original"] ?? "0.00",
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(
                                  "Details not available for this category")),
                        );
                      }
                    },
                    child: CategoryCard(
                      imagePath: categories[index]["image"]!,
                      title: categories[index]["title"]!,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Order Now",
                  style: textStyles.headlineSmall?.copyWith(
                    color: Colors.white,
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
