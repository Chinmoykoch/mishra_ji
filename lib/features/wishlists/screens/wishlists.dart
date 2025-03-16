import 'package:flutter/material.dart';
import 'package:mishra_ji/constants/colors.dart';
import 'package:mishra_ji/constants/fonts.dart';

class WishlistsScreen extends StatelessWidget {
  const WishlistsScreen({super.key});

  final List<Map<String, String>> wishlistData = const [
    {
      "image": "assets/images/shopimage1.png",
      "title": "Dairy Milk Chocolate",
      "sale": "8.50",
      "original": "10.00"
    },
    {
      "image": "assets/images/shopimage1.png",
      "title": "D18 Smart Watch",
      "sale": "17.15",
      "original": "22.00"
    },
    {
      "image": "assets/images/shopimage1.png",
      "title": "Gold Drop Sunflower Oil",
      "sale": "38.45",
      "original": "42.75"
    },
    {
      "image": "assets/images/shopimage1.png",
      "title": "Organic Harvest Rose",
      "sale": "108.50",
      "original": "200.00"
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: wishlistData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final item = wishlistData[index];
            return WishlistsItem(
              categoryTitle: item["title"]!,
              imagePath: item["image"]!,
              salePrice: item["sale"]!,
              originalPrice: item["original"]!,
            );
          },
        ),
      ),
    );
  }
}

class WishlistsItem extends StatelessWidget {
  final String categoryTitle;
  final String imagePath, salePrice, originalPrice;

  const WishlistsItem({
    super.key,
    required this.categoryTitle,
    required this.imagePath,
    required this.salePrice,
    required this.originalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      imagePath,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  categoryTitle,
                  style: textStyles.labelLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "₹$salePrice",
                          style: textStyles.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Text(
                              "₹$originalPrice",
                              style: textStyles.labelMedium?.copyWith(
                                color: Colors.grey,
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 1,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.add_circle_outline,
                          size: 30,
                          color: AppColors.buttonPrimary,
                        ))
                  ],
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.lightBackground,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite_border,
                color: AppColors.lightIcon,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
