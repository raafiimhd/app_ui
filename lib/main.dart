import 'package:app_ui/applications/presentation/routes/routes.dart';
import 'package:app_ui/applications/presentation/routes/routes_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       initialRoute: Routes.initial,
        onGenerateRoute: RoutesGenerator.onRouteGenerator,
    );
  }
}

