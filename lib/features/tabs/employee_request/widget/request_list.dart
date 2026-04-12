import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_colors.dart';
import 'package:hr_system/core/utils/app_style.dart';
import 'package:hr_system/features/tabs/employee_request/widget/from_to_date.dart';
import 'package:hr_system/features/tabs/employee_request/widget/menue_request/presentation/menu_request.dart';
import 'package:hr_system/features/tabs/profile/widgets/custom_button.dart';

import '../../../../core/utils/custome_text_field.dart';

class RequestList extends StatelessWidget {
  const RequestList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        color: AppColors.lightBlue,
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text("Request Type", style: AppStyle.boldBlack14),
          SizedBox(height: 10.h),
          MenuRequest(),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: .spaceAround,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text("From Date", style: AppStyle.boldBlack14),
                    FromToDate(onTap: () {}, dateTime: DateTime.now()),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text("To Date", style: AppStyle.boldBlack14),
                    FromToDate(onTap: () {}, dateTime: DateTime.now()),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Text("Reason", style: AppStyle.boldBlack14),
          SizedBox(height: 10.h),
          CustomTextField(
            fillColor: AppColors.lightBlue,
            hint: "Write a reason",
            hintStyle: AppStyle.meduimBlack14,
            prefixIcon: Icon(Icons.edit_note, color: AppColors.primary2Color),
          ),
          SizedBox(height: 10.h),
          CustomButton(text: "Submit", icon: Icons.send, onPressed: (){})
        ],
      ),
    );
  }
}
