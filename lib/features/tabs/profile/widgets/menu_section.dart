import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'item_with_list_tile.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemWithListTile(
          text: "My Payslips",
          icon: Icons.account_balance_wallet,
          borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
          onTab: () {},
        ),
        ItemWithListTile(
          text: "My Attendance",
          icon: Icons.event_available,
          onTab: () {},
        ),
        ItemWithListTile(
          text: "Company Policies",
          icon: Icons.description,
          onTab: () {},
        ),
        ItemWithListTile(
          text: "Documents",
          icon: Icons.folder,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.r)),
          onTab: () {},
        ),
        SizedBox(height: 12.h),
      ],
    );
  }
}
