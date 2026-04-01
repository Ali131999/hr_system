import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';
import 'custom_card.dart';

class PersonalInfoCard extends StatelessWidget {
  const PersonalInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Personal Info", style: AppStyle.boldBlack16,),
           SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              IconAndTitle(icon: Icons.email, title: "ali@gmail.com"),
              IconAndTitle(icon: Icons.phone, title: "01207749067"),
            ],
          ),
          SizedBox(height: 8.h),
          IconAndTitle(icon: Icons.date_range, title: "2026"),
        ],
      ),
    );
  }

  Widget IconAndTitle({required IconData icon, required String title}) {
    return Row(
      children: [
        Icon(icon, color: AppColors.primary2Color),
         SizedBox(width: 10.w),
        Text(title,style: AppStyle.meduimGrey14,maxLines: 2,),
      ],
    );
  }
}
