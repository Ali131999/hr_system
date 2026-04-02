import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_colors.dart';
import 'package:hr_system/core/utils/app_style.dart';

class CustomedHomeItem extends StatelessWidget {
  final String title;
  final String subTitle1;
  final String subTitle2;

  final String textButton;
  final IconData icon;
  final void Function()? textButtonClick;
  const CustomedHomeItem({
    super.key,
    required this.title,
    required this.subTitle1,
    required this.subTitle2,

    required this.textButton,
    this.textButtonClick,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123.h,
      width: 155.w,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                padding: EdgeInsets.all(8.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36.r),
                  color: AppColors.lightBlue,
                ),
                child: Icon(icon, color: AppColors.primary2Color, size: 15.sp),
              ),
              AutoSizeText(overflow:.ellipsis,title, style: AppStyle.meduimBlack14),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            child: AutoSizeText(overflow:.ellipsis,
              subTitle1,
              style: AppStyle.boldBlack14.copyWith(color: AppColors.darkBlue),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: AutoSizeText(overflow:.ellipsis,subTitle2, style: AppStyle.mediumGray14),
          ),
          InkWell(
            onTap: textButtonClick,
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
              decoration: BoxDecoration(
                color: AppColors.lightBlue,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: AutoSizeText(overflow:.ellipsis,
                textButton,
                style: AppStyle.mediumGray14.copyWith(
                  color: AppColors.blueGrey,
                  fontSize: 10.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
