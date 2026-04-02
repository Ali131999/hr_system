import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';
import 'app_style.dart';

class CustomedButton extends StatelessWidget {
  final String text;
  final bool? addItem;
  final VoidCallback onPressed;
  final double? horizontal;
  final double? vertical;
  final Color? backgroundColor;
  final Color? textColor;
  final double? radius;
  final double? spaceBeforeText;
  final double? spaceAfterText;
  final IconData? preIconName;
  final IconData? sufficIconName;
  final TextStyle? textStyle;
  const CustomedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.horizontal,
    this.backgroundColor,
    this.radius,
    this.textColor,
    this.addItem = false,
    this.preIconName,
    this.sufficIconName,
    this.spaceBeforeText,
    this.spaceAfterText,
    this.vertical,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(
        vertical: vertical ?? 8.h,
        horizontal: horizontal ?? 20.w,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(radius ?? 10.r),
        side: BorderSide(color: AppColors.primary2Color),
      ),
      color: backgroundColor ?? AppColors.primary2Color,
      onPressed: () {
        onPressed();
      },
      child: addItem == false
          ? AutoSizeText(text, style: textStyle ?? AppStyle.mediumWhite16)
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (preIconName != null)
                  Icon(preIconName, color: AppColors.white),
                SizedBox(width: spaceBeforeText ?? 0),
                AutoSizeText(text, style: textStyle ?? AppStyle.mediumWhite16),
                SizedBox(width: spaceAfterText ?? 0),
                if (sufficIconName != null)
                  Icon(sufficIconName, color: AppColors.white),
              ],
            ),
    );
  }
}
