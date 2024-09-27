import 'package:app_ui/domain/core/colors/colors.dart';
import 'package:flutter/material.dart';

class RowList extends StatelessWidget {
  const RowList({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Container(
            width:screenWidth*0.21,
            height: screenHeight*0.14,
           decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.kWhite,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     CircleAvatar(
                      backgroundColor: AppColors.kPink,
                      child: const Icon(Icons.rice_bowl_outlined,color: AppColors.kBlack,),
                     ),
                     const Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Text('Rice',style: TextStyle(
                        color: AppColors.kRed
                       ),),
                     )
                    ],
                  ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              width:screenWidth*0.21,
              height: screenHeight*0.14,
             decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.kWhite,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       CircleAvatar(
                        backgroundColor: AppColors.kPink,
                        child: const Icon(Icons.delete_outlined,color: AppColors.kBlack,),
                       ),
                       const Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text('Snacks',style: TextStyle(
                          color: AppColors.kRed
                         ),),
                       )
                      ],
                    ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              width:screenWidth*0.21,
             height: screenHeight*0.14,
             decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.kWhite,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       CircleAvatar(
                        backgroundColor: AppColors.kPink,
                        child: const Icon(Icons.local_drink,color: AppColors.kBlack,),
                       ),
                       const Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text('Drinks',style: TextStyle(
                          color: AppColors.kRed
                         ),),
                       )
                      ],
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
             width:screenWidth*0.21,
             height: screenHeight*0.14,
             decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.kWhite,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       CircleAvatar(
                        backgroundColor: AppColors.kPink,
                        child: const Icon(Icons.window_outlined,color: AppColors.kBlack,),
                       ),
                       const Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text('More',style: TextStyle(
                          color: AppColors.kRed
                         ),),
                       )
                      ],
                    ),
            ),
          )
        ],
      ),
    );
  }
}
