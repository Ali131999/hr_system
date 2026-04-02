
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_colors.dart';

import '../../../../core/utils/app_style.dart';

class IconAndTitle extends StatelessWidget {
  IconData icon;
  String title;
   IconAndTitle.IconAndTitlePersonInfo({super.key,required this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColors.primary2Color),
        SizedBox(width: 10.w),
        Text(title,style: AppStyle.meduimGrey14,maxLines: 2,),
      ],
    );
  }
}
