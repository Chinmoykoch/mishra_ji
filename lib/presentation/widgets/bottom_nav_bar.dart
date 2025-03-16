import 'package:flutter/material.dart';
import 'package:mishra_ji/constants/colors.dart';
import 'package:mishra_ji/features/categories/screens/categories_screen.dart';
import 'package:mishra_ji/features/wishlists/screens/wishlists.dart';
import 'package:mishra_ji/presentation/screens/profile.dart';

import '../screens/home_screen.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const Center(child: Text("cart", style: TextStyle(fontSize: 20))),
    const WishlistsScreen(),
    const Center(child: Text("Profile Screen", style: TextStyle(fontSize: 20))),
    const Center(
        child: Text("Categories Screen", style: TextStyle(fontSize: 20))),
    const Center(child: Text("My Cart Screen", style: TextStyle(fontSize: 20))),
    const Center(
        child: Text("Wishlist Screen", style: TextStyle(fontSize: 20))),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.buttonPrimary,
        unselectedItemColor: AppColors.darkBorder,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            activeIcon: const Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.grid_view_outlined),
            activeIcon: const Icon(Icons.grid_view_rounded),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart_outlined),
            activeIcon: const Icon(Icons.shopping_cart),
            label: 'My Cart',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite_border),
            activeIcon: const Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline),
            activeIcon: const Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
