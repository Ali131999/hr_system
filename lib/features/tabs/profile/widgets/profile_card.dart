import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_style.dart';

import '../../../../core/utils/app_colors.dart';
import 'custom_button.dart';

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
                child: CustomButton(text :"Profile",icon:Icons.person,onPressed: (){} ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomButton(text: "Hire & Members",icon: Icons.work,onPressed: (){}),
              ),
            ],
          ),
        ],
      ),
    );
  }


}
