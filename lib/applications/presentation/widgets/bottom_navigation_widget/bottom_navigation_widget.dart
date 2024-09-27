import 'package:app_ui/applications/presentation/cart/cart_screen.dart';
import 'package:app_ui/applications/presentation/home/home_screen.dart';
import 'package:app_ui/applications/presentation/profile/profile_screen.dart';
import 'package:app_ui/applications/presentation/search/search_screen.dart';
import 'package:app_ui/applications/presentation/wishlist/wishlist_screen.dart';
import 'package:app_ui/domain/core/colors/colors.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int currentPage = 2; 

  final List<Widget> pages = const [
    SearchScreen(),
    WishlistScreen(),
    HomeScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomAppBar(
        color: AppColors.kWhite,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Search
            IconButton(
              icon: currentPage == 0
                  ? const CircleAvatar(
                      backgroundColor: AppColors.kRed,
                      child: Icon(Icons.search, color: AppColors.kWhite),
                    )
                  : Icon(Icons.search, color: AppColors.kGrey),
              onPressed: () => onPageChanged(0),
            ),
            // Wishlist
            IconButton(
              icon: currentPage == 1
                  ? const CircleAvatar(
                      backgroundColor: AppColors.kRed,
                      child: Icon(Icons.favorite, color: AppColors.kWhite),
                    )
                  : Icon(Icons.favorite, color: AppColors.kGrey),
              onPressed: () => onPageChanged(1),
            ),
            // Home
            IconButton(
              icon: currentPage == 2
                  ? const CircleAvatar(
                      backgroundColor: AppColors.kRed,
                      child: Icon(Icons.home, color: AppColors.kWhite),
                    )
                  : Icon(Icons.home, color: AppColors.kGrey),
              onPressed: () => onPageChanged(2),
            ),
            // Cart
            IconButton(
              icon: currentPage == 3
                  ? const CircleAvatar(
                      backgroundColor: AppColors.kRed,
                      child: Icon(Icons.shopping_cart, color: AppColors.kWhite),
                    )
                  : Icon(Icons.shopping_cart, color: AppColors.kGrey),
              onPressed: () => onPageChanged(3),
            ),
            // Profile
            IconButton(
              icon: currentPage == 4
                  ? const CircleAvatar(
                      backgroundColor: AppColors.kRed,
                      child: Icon(Icons.person, color: AppColors.kWhite),
                    )
                  : Icon(Icons.person, color: AppColors.kGrey),
              onPressed: () => onPageChanged(4),
            ),
          ],
        ),
      ),
    );
  }
}
