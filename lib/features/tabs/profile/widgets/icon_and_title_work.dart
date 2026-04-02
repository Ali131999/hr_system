import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class IconAndTitleWork extends StatelessWidget {
   IconData icon;
   String title;
   TextStyle textStyle;
   IconAndTitleWork({super.key,required this.icon,required this.title,required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColors.primary2Color),
        SizedBox(width: 10.w),
        Expanded(child: Text(title, style: textStyle, maxLines: 2,softWrap: true,overflow: TextOverflow.ellipsis,)),
      ],
    );
  }
}
