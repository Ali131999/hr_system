import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_colors.dart';
import 'package:hr_system/core/utils/app_style.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          SizedBox(height: 30.h),
          Text("Ali Mohamed", style: AppStyle.boldBlack24),
          Text("Flutter Developer", style: AppStyle.mediumBlack16),
          SizedBox(height: 10.h),
          Row(
            children: [
              Expanded(
                child: button(
                  text: "Profile",
                  icon: Icons.person,
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: button(
                  text: "Hire & Members",
                  icon: Icons.work,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget button({
    required String text,
    required IconData icon,
    required void Function()? onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
        decoration: BoxDecoration(
          color: AppColors.lightBlue,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.primary2Color),
            SizedBox(width: 10.w),
            Text(text, style: AppStyle.w400Black12),
          ],
        ),
      ),
    );
  }
}
