import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';

class SubmitYourRequest extends StatelessWidget {
  const SubmitYourRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: .start,
      mainAxisAlignment: .spaceAround,
      children: [
        Text("Submit Your Request", style: AppStyle.mediumBlue16),
        SizedBox(width: 12.w),
        Container(
          padding: EdgeInsets.all(6.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColors.lightBlue,
          ),
          child: Column(
            crossAxisAlignment: .end,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.energy_savings_leaf,
                    color: AppColors.primary2Color,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    "remaining Leaves",
                    style: AppStyle.meduimPrimary2Color14,
                  ),
                ],
              ),
              Text("7 days", style: AppStyle.meduimPrimary2Color14),
            ],
          ),
        ),
      ],
    );
  }
}
