import 'package:app_ui/domain/core/colors/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: BottomCurveClipper(),
              child: Container(
                width: double.infinity,
                height: screenHeight * 0.6,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/image-3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.25,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'The Fastest In',
                  style: TextStyle(
                    fontSize: screenWidth * 0.07,
                    fontWeight: FontWeight.bold,
                    color: AppColors.kBlack,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Delivery ',
                      style: TextStyle(
                        fontSize: screenWidth * 0.07,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kBlack,
                      ),
                    ),
                    Text(
                      'Food',
                      style: TextStyle(
                        fontSize: screenWidth * 0.07,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kRed,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  'Our job is to fill your tummy with\n delicious food and fast delivery.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/bottom');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.kRed,
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;

    path.lineTo(0, 0);
    path.lineTo(0, height - 80);
    path.quadraticBezierTo(width * 0.5, height - 160, width, height - 80);
    path.lineTo(width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
