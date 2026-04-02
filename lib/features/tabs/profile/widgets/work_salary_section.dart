import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';
import 'custom_card.dart';

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
                  IconAndTitle(
                    icon: Icons.work,
                    title: "Work Info",
                    textStyle: AppStyle.boldBlack16,
                  ),
                  IconAndTitle(
                    icon: Icons.confirmation_num,
                    title: "EmployID:6543",
                    textStyle: AppStyle.meduimGrey14,
                  ),
                  IconAndTitle(
                    icon: Icons.tonality_outlined,
                    title: "Department Developer",
                    textStyle: AppStyle.meduimGrey14,
                  ),
                  IconAndTitle(
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

  Widget IconAndTitle({
    required IconData icon,
    required String title,
    required TextStyle textStyle,
  }) {
    return Row(
      children: [
        Icon(icon, color: AppColors.primary2Color),
        SizedBox(width: 10.w),
        Expanded(child: Text(title, style: textStyle, maxLines: 2,softWrap: true,overflow: TextOverflow.ellipsis,)),
      ],
    );
  }
}
