import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_colors.dart';
import 'package:hr_system/core/utils/app_style.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        item(
          text: "My Payslips",
          icon: Icons.account_balance_wallet,
          borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
          onTab: () {},
        ),
        item(text: "My Attendance", icon: Icons.event_available, onTab: () {}),
        item(text: "Company Policies", icon: Icons.description, onTab: () {}),
        item(
          text: "Documents",
          icon: Icons.folder,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.r)),
          onTab: () {},
        ),
        SizedBox(height: 12.h),
      ],
    );
  }

  Widget item({
    required String text,
    required IconData icon,
    required void Function()? onTab,
    BorderRadius? borderRadius,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h),
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.zero,
        color: AppColors.white,
      ),
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        leading: Icon(icon),
        iconColor: AppColors.primary2Color,
        // tileColor: AppColors.white,
        title: Text(text, style: AppStyle.boldBlack16),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
