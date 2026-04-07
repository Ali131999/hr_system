import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_colors.dart';
import 'package:hr_system/features/bottomNavBar/cubit/bottom_nav_bar_cubit.dart';
import 'package:hr_system/features/bottomNavBar/cubit/bottom_nav_bar_state.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  late BottomNavBarCubit cubit;
  @override
  Widget build(BuildContext context) {
    cubit = context.watch<BottomNavBarCubit>();
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.selectedIndex,
            onTap: cubit.changeIndex,
            items: [
              customedBottomNavigationBarItem(icon: Icons.home, index: 0),
              customedBottomNavigationBarItem(icon: Icons.place, index: 1),
              customedBottomNavigationBarItem(icon: Icons.assignment, index: 2),
              customedBottomNavigationBarItem(icon: Icons.person, index: 3),
            ],
          ),
          body: cubit.tabs[cubit.selectedIndex],
        );
      },
    );
  }

  BottomNavigationBarItem customedBottomNavigationBarItem({
    required IconData icon,
    required int index,
  }) {
    {
      return BottomNavigationBarItem(
        icon: cubit.selectedIndex == index
            ? Container(
                padding: EdgeInsets.all(6.r),
                decoration: BoxDecoration(
                  color: AppColors.primary2Color,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Icon(icon, size: 28.sp, color: AppColors.white),
              )
            : Icon(icon, size: 28.sp, color: AppColors.gray),
        label: '',
      );
    }
  }
}
