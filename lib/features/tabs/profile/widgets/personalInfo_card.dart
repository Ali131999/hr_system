import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_style.dart';
import 'custom_card.dart';
import 'icon_and_title_person_info.dart';

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
              IconAndTitle.IconAndTitlePersonInfo(icon: Icons.email, title: "ali@gmail.com"),
              IconAndTitle.IconAndTitlePersonInfo(icon: Icons.phone, title: "01207749067"),
            ],
          ),
          SizedBox(height: 8.h),
          IconAndTitle.IconAndTitlePersonInfo(icon: Icons.date_range, title: "2026"),
        ],
      ),
    );
  }

}
