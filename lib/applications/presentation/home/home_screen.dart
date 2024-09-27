import 'package:app_ui/applications/presentation/home/widgets/container_widget.dart';
import 'package:app_ui/applications/presentation/home/widgets/row_list.dart';
import 'package:app_ui/applications/presentation/home/widgets/search_bar.dart';
import 'package:app_ui/domain/core/colors/colors.dart';
import 'package:app_ui/domain/core/constants/const.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  color: Colors.white10,
                ),
                Container(
                  height: screenHeight * 0.4,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/image-6.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.06,
                  left: screenWidth * 0.05,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                          color: AppColors.kWhite,
                          fontWeight: FontWeight.w300,
                          fontSize: screenHeight * 0.02,
                        ),
                      ),
                      kHeight3,
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: AppColors.kWhite,
                          ),
                          Text(
                            'St, Abigael',
                            style: TextStyle(
                              color: AppColors.kWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: screenHeight * 0.02,
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.kWhite,
                          ),
                        ],
                      ),
                      kHeight15,
                      Text(
                        'Promo buy 1,\nGet 1 more!',
                        style: TextStyle(
                          color: AppColors.kWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: screenHeight * 0.03,
                        ),
                      ),
                      kHeight5,
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.kWhite,
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Order Now',
                          style: TextStyle(
                            color: AppColors.kRed,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
                Positioned(
                    top: screenHeight * 0.37, 
                    left: screenWidth * 0.05,
                    right: screenWidth * 0.05,
                    child: const SearchBarScreen(),
                  ),
              ],
            ),
            const RowList(),
            const Padding(
              padding: EdgeInsets.only(top: 9,left: 17),
              child: Text('Top Rated Food',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColors.kBlack
              ),),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 17),
              child: ContainerWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17,top: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Text('Restaurant near you',
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                 ),),
                 Text('View all',
                 style: TextStyle(
                  color: Colors.grey[400]
                 ),)
                ],
              ),
            )
          ],
      ),
    );
  }
}