import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  String text;
  IconData icon;
  void Function()? onPressed;

   CustomButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
        return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 8.w),
        decoration: BoxDecoration(
          color: AppColors.lightBlue,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(children: [
          Icon(icon,color: AppColors.primary2Color,),
          SizedBox(width: 10.w),
          Text(text,style: AppStyle.w400Black12,)
        ]),
      ),
    );

  }
}
