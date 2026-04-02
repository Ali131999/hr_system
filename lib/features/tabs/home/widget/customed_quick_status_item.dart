import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_colors.dart';
import 'package:hr_system/core/utils/app_style.dart';

class CustomedQuickStatusItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle1;
  final String subTitle2;
  const CustomedQuickStatusItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle1,
    required this.subTitle2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      decoration: BoxDecoration(
        color: AppColors.lightBlue,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon, color: AppColors.primary2Color),
              SizedBox(width: 5.w),
              AutoSizeText(
                title,
                style: AppStyle.mediumBlack16.copyWith(fontSize: 14.sp),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          AutoSizeText(subTitle1, style: AppStyle.boldDarkBlue18),
          SizedBox(height: 3.h),
          AutoSizeText(
            subTitle2,
            style: AppStyle.mediumBlack16.copyWith(
              fontSize: 12.sp,
              color: AppColors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
