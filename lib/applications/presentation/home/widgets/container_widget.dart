import 'package:app_ui/applications/presentation/home/widgets/food_iteam_container.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true, 
      physics: const NeverScrollableScrollPhysics(), 
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 10.0,
      ),
      children: [
        FoodItemContainer(
          image: 'asset/image-2.jpg',
          name: 'Burger beef anjaz',
          store: 'Burger Bos',
          rating: "(4.9)",
          price: '\$45.0',
          onTap: () {
            // Add your logic here
          },
        ),
        FoodItemContainer(
          image: 'asset/image-1.jpg',
          name: 'Beef Burger',
          store: 'Cheesy Mozarella',
          rating: "(4.9)",
          price: '\$45.0',
          onTap: () {
            Navigator.of(context).pushNamed('/food-details');
          },
        ),
      ],
    );
  }
}
