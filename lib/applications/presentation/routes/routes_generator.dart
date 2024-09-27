import 'package:app_ui/applications/presentation/food_details/food_details.dart';
import 'package:app_ui/applications/presentation/routes/routes.dart';
import 'package:app_ui/applications/presentation/splash_screen/splash_screen.dart';
import 'package:app_ui/applications/presentation/widgets/bottom_navigation_widget/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';

class RoutesGenerator {
  static Route onRouteGenerator(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (ctx) => const SplashScreen());
      case Routes.bottomNavigation:
        return MaterialPageRoute(
          builder: (ctx) => const BottomNavigationWidget(),
        );
      case Routes.foodDetails:
        return MaterialPageRoute(
          builder: (ctx) => FoodDetails(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (ctx) {
      return const Scaffold(
        body: Center(
          child: Text('Something Error'),
        ),
      );
    });
  }
}
