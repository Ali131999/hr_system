import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_assets.dart';
import 'package:hr_system/core/utils/app_colors.dart';
import 'package:hr_system/core/utils/app_style.dart';

class CustomedLocationAndTime extends StatelessWidget {
  const CustomedLocationAndTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      height: 80.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.r),
          topRight: Radius.circular(12.r),
        ),
        image: DecorationImage(
          image: AssetImage(AppAssets.locationImg),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10.w),
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: AppColors.primary2Color,
                      size: 30.sp,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: AppColors.green,
                      size: 30.sp,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  AutoSizeText("6:29 AM", style: AppStyle.meduimBlueGrey14),
                  AutoSizeText("On Time", style: AppStyle.meduimBlack14),
                  AutoSizeText("Absence", style: AppStyle.meduimBlueGrey14),
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(top: 35.h),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: AppColors.primary2Color,
                    ),
                    AutoSizeText(
                      "Office",
                      style: AppStyle.meduimPrimary2Color14,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
