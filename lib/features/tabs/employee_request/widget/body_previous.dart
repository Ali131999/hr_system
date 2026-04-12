import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/features/tabs/employee_request/widget/prvious_requests.dart';
import 'package:hr_system/features/tabs/employee_request/widget/request_list.dart';
import 'package:hr_system/features/tabs/employee_request/widget/submit_your_request.dart';

import '../../../../core/utils/app_style.dart';

class BodyPrevious extends StatelessWidget {
  const BodyPrevious({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(8.w),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SubmitYourRequest(),
            SizedBox(height: 10.h),
            RequestList(),
            SizedBox(height: 10.h),
            Text("Previous Requests", style: AppStyle.boldBlack16),
            SizedBox(height: 10.h),
            PreviousRequests(title:"Agza" ,dateFrom:"22/4/2026" ,dateTo:"22/4/2026" ,status:"Approved" ,),
            PreviousRequests(title:"Azn" ,dateFrom:"22/4/2026" ,dateTo:"22/4/2026" ,status:"rejected" ,),
            PreviousRequests(title:"Agza" ,dateFrom:"22/4/2026" ,dateTo:"22/4/2026" ,status:"Pending" ,),

          ],
        ),
      ),
    );
  }
}

