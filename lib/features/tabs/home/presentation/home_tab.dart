import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_colors.dart';
import 'package:hr_system/core/utils/app_style.dart';
import 'package:hr_system/core/utils/custom_buttom.dart';
import 'package:hr_system/features/tabs/home/widget/customed_home_item.dart';
import 'package:hr_system/features/tabs/home/widget/customed_info.dart';
import 'package:hr_system/features/tabs/home/widget/customed_location_and_time.dart';
import 'package:hr_system/features/tabs/home/widget/customed_quick_status_item.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 235.h,
            child: Stack(
              children: [
                Container(
                  color: AppColors.background,
                  width: double.infinity,
                  height: double.infinity,
                ),
                CustomedInfo(notificationCallback: () {}),
                Positioned(
                  top: 90.h,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 130.h,
                    margin: EdgeInsets.symmetric(horizontal: 16.w),

                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Column(
                      children: [
                        CustomedLocationAndTime(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 5.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomedButton(
                                addItem: true,
                                preIconName: Icons.arrow_forward,
                                spaceBeforeText: 5.w,
                                text: "Check In",
                                backgroundColor: AppColors.secondary2Color,
                                onPressed: () {},
                              ),
                              CustomedButton(
                                addItem: true,
                                preIconName: Icons.arrow_forward,
                                spaceBeforeText: 5.w,
                                text: "Check Out",
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Wrap(
              runSpacing: 10.h,
              spacing: 10.w,
              children: [
                CustomedHomeItem(
                  icon: Icons.exit_to_app,
                  title: "Attendance",
                  subTitle1: "9:42 AM   at office",
                  subTitle2: "On Time",
                  textButton: "Absences",
                  textButtonClick: () {},
                ),
                CustomedHomeItem(
                  icon: Icons.payment,
                  title: "Salary",
                  subTitle1: "EGP 13,500",
                  subTitle2: "View Breakdown",
                  textButton: "Net Pay",
                  textButtonClick: () {},
                ),
                CustomedHomeItem(
                  icon: Icons.calendar_month,
                  title: "Schedule",
                  subTitle1: "10:00 AM-8:00 PM",
                  subTitle2: "2 Day of this week",
                  textButton: "Day's Shift",
                  textButtonClick: () {},
                ),
                CustomedHomeItem(
                  icon: Icons.description_outlined,
                  title: "Requests",
                  subTitle1: "0 Pending Request",
                  subTitle2: "View & Apply",
                  textButton: "View & Apply",
                  textButtonClick: () {},
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  "Quick Status",
                  style: AppStyle.mediumBlack16.copyWith(fontSize: 14.sp),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomedQuickStatusItem(
                        icon: Icons.calendar_month_sharp,
                        title: "Total Days",
                        subTitle1: "28",
                        subTitle2: "Working Days",
                      ),
                      SizedBox(width: 10.w),
                      CustomedQuickStatusItem(
                        icon: Icons.access_time,
                        title: "Overtime",
                        subTitle1: "12h",
                        subTitle2: "This Mounth",
                      ),
                      SizedBox(width: 10.w),
                      CustomedQuickStatusItem(
                        icon: Icons.star_outlined,
                        title: "Rating",
                        subTitle1: "4.8",
                        subTitle2: "Excellent",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
