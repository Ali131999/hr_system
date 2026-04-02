import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_assets.dart';
import 'package:hr_system/core/utils/app_colors.dart';
import 'package:hr_system/core/utils/app_style.dart';

class CustomedInfo extends StatelessWidget {
  final void Function()? notificationCallback;
  const CustomedInfo({super.key, this.notificationCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      height: 200.h,
      width: double.infinity, // Adjust the height as needed for the top section
      color: AppColors.primary2Color,
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  AppAssets.profileImage,
                  height: 40.h,
                  width: 40.w,
                  fit: BoxFit.scaleDown,
                ),
                SizedBox(width: 10.w),
                AutoSizeText("Good Morning, Ali", style: AppStyle.boldWhite18),
                Spacer(),
                InkWell(
                  onTap: notificationCallback,
                  child: Container(
                    padding: EdgeInsets.all(6.sp),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Image.asset(
                      AppAssets.notificationImg,
                      height: 20.h,
                      width: 25.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
