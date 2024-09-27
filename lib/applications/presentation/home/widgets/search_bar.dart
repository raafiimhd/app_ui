import 'package:app_ui/domain/core/colors/colors.dart';
import 'package:flutter/material.dart';

class SearchBarScreen extends StatelessWidget {
  const SearchBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.055,
      decoration:
       BoxDecoration(
        borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.kWhite,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search foods, restaurant, etc.',
          hintStyle:  TextStyle(fontSize: 15.0,color: Colors.grey[300]),
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.search,
            size: 20.0,
          ),
        ),
      ),
    );
  }
}