import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_system/features/bottomNavBar/cubit/bottom_nav_bar_state.dart';
import 'package:hr_system/features/tabs/employee_request/presentation/employee_request_tab.dart';
import 'package:hr_system/features/tabs/home/presentation/home_tab.dart';
import 'package:hr_system/features/tabs/map/presentation/map_tab.dart';
import 'package:hr_system/features/tabs/profile/presentation/profile_tab.dart';
import 'package:injectable/injectable.dart';

@injectable
class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());

  List<Widget> tabs = [
    HomeTab(),
    MapTab(),
    EmployeeRequestTap(),
    ProfileTab(),
  ];
  int selectedIndex = 0;
  void changeIndex(int index) {
    selectedIndex = index;
    emit(BottomNavBarIndexChanged());
  }
}
