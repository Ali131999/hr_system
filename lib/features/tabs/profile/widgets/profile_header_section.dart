import 'package:flutter/material.dart';

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
          top: 90,
          left: 16,
          right: 16,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              const ProfileCard(),
              Positioned(
                top: -45,
                child: const CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage("assets/image/person.png"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
