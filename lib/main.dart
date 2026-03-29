import 'package:flutter/material.dart';
import 'package:hr_system/core/utils/app_routes.dart';
import 'package:hr_system/features/home_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeScreen,
      routes: {AppRoutes.homeScreen: (context) => HomeScreen()},
    );
  }
}
