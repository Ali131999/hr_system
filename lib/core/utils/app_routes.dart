import 'package:flutter/material.dart';
import 'package:hr_system/features/bottomNavBar/presentation/bottom_nav_bar_screen.dart';

class AppRoutes {
  static const String bottomNavBarScreen = '/bottomNavBarScreen';

  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.bottomNavBarScreen: (context) => BottomNavBarScreen(),
  };
}
