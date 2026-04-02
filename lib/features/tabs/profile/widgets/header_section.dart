import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary2Color, AppColors.secondary2Color],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: .end,
            crossAxisAlignment: .start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
