import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/menu_section.dart';
import '../widgets/personal_info_card.dart';
import '../widgets/profile_header_section.dart';
import '../widgets/work_salary_section.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfileHeaderSection(),
          SizedBox(height: 150.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: const PersonalInfoCard(),
          ),
          SizedBox(height: 8.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.w),
            child: const WorkSalarySection(),
          ),
          SizedBox(height: 8.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),

            child: const MenuSection(),
          ),
        ],
      ),
    );
  }
}
