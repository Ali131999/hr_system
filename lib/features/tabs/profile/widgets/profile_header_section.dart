import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_system/core/utils/app_assets.dart';

import 'header_section.dart';
import 'profile_card.dart';

class ProfileHeaderSection extends StatelessWidget {
  const ProfileHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const HeaderSection(),
        Positioned(
          top: 90.h,
          left: 16.w,
          right: 16.w,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              const ProfileCard(),
              Positioned(
                top: -45.h,
                child: const CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(AppAssets.profileImage),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
