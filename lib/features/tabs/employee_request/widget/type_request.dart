import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_style.dart';

import '../../../../core/utils/app_colors.dart';

class TypeRequest extends StatelessWidget {
  final String title;
  final String dateFrom;
  final String dateTo;
  final String status;

  const TypeRequest({super.key, 
    required this.title,
    required this.dateFrom,
    required this.dateTo,
    required this.status,
  });

  Color getStatusColor(String status) {
    switch (status) {
      case "Approved":
        return AppColors.green;
      case "Pending":
        return AppColors.orange;
      case "rejected":
        return AppColors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      margin: EdgeInsets.only(bottom: 4.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        color: AppColors.lightBlue,
        border: Border.all(width: 1,color: AppColors.primary2Color),
      ),
      child: Row(
        mainAxisAlignment:.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: .start,
            children: [
              Text(title, style: AppStyle.boldBlack16),
              SizedBox(height: 5.h),
              Text("$dateFrom-$dateTo", style: AppStyle.w400Black12),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
            decoration: BoxDecoration(
              color: getStatusColor(status),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Text(status, style: AppStyle.w400Black12
            ),
          )
        ],
      ),
    );
  }
}
