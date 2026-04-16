import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_colors.dart';

class FromToDate extends StatelessWidget {
  final DateTime? dateTime;
  final VoidCallback onTap;

  const FromToDate({super.key, required this.dateTime, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: BoxBorder.all(color: AppColors.primary2Color),
          color: AppColors.lightBlue,
        ),
        child: Row(
          children: [
            Icon(Icons.calendar_month_rounded, color: AppColors.primary2Color),
            SizedBox(width: 10.w),
            Text(
              dateTime == null
                  ? "Select Date"
                  : "${dateTime!.day}/${dateTime!.month}/${dateTime!.year}",
            ),
          ],
        ),
      ),
    );
  }
}
