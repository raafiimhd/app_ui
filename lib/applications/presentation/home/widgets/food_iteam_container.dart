import 'package:app_ui/domain/core/colors/colors.dart';
import 'package:flutter/material.dart';

class FoodItemContainer extends StatelessWidget {
  final String image;
  final String name;
  final String store;
  final String rating;
  final String price;
  final VoidCallback? onTap;

  const FoodItemContainer({
    super.key,
    required this.image,
    required this.name,
    required this.store,
    required this.rating,
    required this.price,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.kWhite,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 2.0),
              blurRadius: 5.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                        child: Image.asset(
                          image,
                          height: screenHeight * 0.1, // Adjust as needed
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.015, // Responsive horizontal padding
                          vertical: screenHeight * 0.005, // Responsive vertical padding
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.kWhite.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.star,
                                color: AppColors.kYellow, size: 16),
                            Text(
                              rating,
                              style: TextStyle(
                                color: AppColors.kBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.035, // Responsive font size
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.02), // Responsive padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: screenWidth * 0.045, // Responsive font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            store,
                            style: TextStyle(
                              fontSize: screenWidth * 0.035, // Responsive font size
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            price,
                            style: TextStyle(
                              fontSize: screenWidth * 0.04, // Responsive font size
                              fontWeight: FontWeight.bold,
                              color: AppColors.kBlack,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
