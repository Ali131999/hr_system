import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';

class ItemWithListTile extends StatelessWidget {
  String text;
  IconData icon;
  void Function()? onTab;
  BorderRadius? borderRadius;

  ItemWithListTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTab,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
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
        title: Text(text, style: AppStyle.boldBlack16),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
