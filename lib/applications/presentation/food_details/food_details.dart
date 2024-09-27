import 'package:app_ui/applications/controller/food_details_controller/food_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_ui/domain/core/colors/colors.dart';

class FoodDetails extends StatelessWidget {
  final FoodDetailsController controller = Get.put(FoodDetailsController());

  FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05, 
              vertical: screenHeight * 0.05,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: _buildIcon(Icons.keyboard_arrow_left),
                ),
                _buildIcon(Icons.more_horiz),
              ],
            ),
          ),
          ClipRRect(
            child: Image.asset(
              'asset/image-1.jpg',
              height: screenHeight * 0.3,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Center(
            child: SizedBox(
              width: screenWidth * 0.4,
              height: screenHeight * 0.06,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.kRed,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildQuantityButton(Icons.remove, controller.decreaseQuantity),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Obx(() {
                        return Text(
                          '${controller.quantity}',
                          style: TextStyle(
                            fontSize: screenHeight * 0.025,
                            color: AppColors.kWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      }),
                    ),
                    _buildQuantityButton(Icons.add, controller.increaseQuantity),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.04),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Beef Burger',
                  style: TextStyle(
                    color: AppColors.kBlack,
                    fontSize: screenHeight * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cheesy Mozarella',
                      style: TextStyle(
                        color: Colors.black26,
                        fontSize: screenHeight * 0.018,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '\$', // $ in red
                            style: TextStyle(
                              fontSize: screenHeight * 0.03,
                              fontWeight: FontWeight.bold,
                              color: AppColors.kRed,
                            ),
                          ),
                          TextSpan(
                            text: '45.00', // Price in black
                            style: TextStyle(
                              fontSize: screenHeight * 0.03,
                              fontWeight: FontWeight.bold,
                              color: AppColors.kBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.015),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIconText(Icons.star, '4.8'),
                _buildIconText(Icons.whatshot, '150 Kcal'),
                _buildIconText(Icons.av_timer, '5-10 Min'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05,vertical: screenHeight*0.03),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'The beef burger uses 100% quality beef with\nsliced tomatoes, cucumbers, vegetables\nand onions...',
                    style: TextStyle(
                      fontSize: screenHeight * 0.02,
                      color: AppColors.kGrey, 
                    ),
                  ),
                  TextSpan(
                    text: 'Read More',
                    style: TextStyle(
                      fontSize: screenHeight * 0.02,
                      color: AppColors.kRed,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.05),
          Center(
            child: SizedBox(
              width: screenWidth * 0.8,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.kRed,
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: screenHeight * 0.025,
                    color: AppColors.kWhite,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min, 
      children: [
        Icon(icon, color: AppColors.kGrey, size: 20),
        const SizedBox(width: 5), 
        Text(
          text,
          style: TextStyle(
            color: AppColors.kGrey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _buildIcon(IconData icon) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
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
      child: Icon(
        icon,
        color: AppColors.kRed,
      ),
    );
  }

  Widget _buildQuantityButton(IconData icon, VoidCallback onPressed) {
    return IconButton(
      icon: Icon(icon, color: AppColors.kWhite),
      iconSize: 18,
      onPressed: onPressed,
    );
  }
}
