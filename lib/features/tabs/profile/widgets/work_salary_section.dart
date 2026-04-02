import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_style.dart';
import 'custom_card.dart';
import 'icon_and_title_work.dart';

class WorkSalarySection extends StatelessWidget {
  const WorkSalarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: CustomCard(
              child: Column(
                mainAxisAlignment: .spaceAround,
                children: [
                  IconAndTitleWork(
                    icon: Icons.work,
                    title: "Work Info",
                    textStyle: AppStyle.boldBlack16,
                  ),
                  IconAndTitleWork(
                    icon: Icons.confirmation_num,
                    title: "EmployID:6543",
                    textStyle: AppStyle.meduimGrey14,
                  ),
                  IconAndTitleWork(
                    icon: Icons.tonality_outlined,
                    title: "Department Developer",
                    textStyle: AppStyle.meduimGrey14,
                  ),
                  IconAndTitleWork(
                    icon: Icons.location_on,
                    title: "Alexandria",
                    textStyle: AppStyle.meduimGrey14,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 6.w),
          Expanded(
            child: CustomCard(
              child: Column(
                mainAxisAlignment: .spaceAround,
                children: [
                  IconAndTitleWork(
                    icon: Icons.payments,
                    title: "Salary Info",
                    textStyle: AppStyle.boldBlack16,
                  ),
                  IconAndTitleWork(
                    icon: Icons.money,
                    title: "EGP 14000",
                    textStyle: AppStyle.meduimGrey14,
                  ),
                  IconAndTitleWork(
                    icon: Icons.timelapse,
                    title: "EGP 75/h",
                    textStyle: AppStyle.meduimGrey14,
                  ),
                  IconAndTitleWork(
                    icon: Icons.date_range,
                    title: "28 Day/Month",
                    textStyle: AppStyle.meduimGrey14,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


}
