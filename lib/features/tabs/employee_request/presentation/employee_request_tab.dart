import 'package:flutter/material.dart';
import 'package:hr_system/core/utils/app_colors.dart';
import 'package:hr_system/features/tabs/employee_request/widget/body_previous.dart';

import '../../../../core/utils/app_style.dart';

class EmployeeRequestTap extends StatelessWidget {
  const EmployeeRequestTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Request", style: AppStyle.boldWhite20),
        backgroundColor: AppColors.primary2Color,
        foregroundColor: AppColors.white,
      ),
      body: Container(color: AppColors.background, child: const BodyPrevious()),
    );
  }
}
