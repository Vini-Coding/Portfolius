import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolius/app/core/constants/app_assets.dart';
import 'package:portfolius/app/core/constants/app_colors.dart';

import '../../core/constants/app_text_styles.dart';

class AboutMeSession extends StatefulWidget {
  const AboutMeSession({super.key});

  @override
  State<AboutMeSession> createState() => _AboutMeSessionState();
}

class _AboutMeSessionState extends State<AboutMeSession> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: AppColors.backgroundColor2,
      child: Row(
        children: [
          Image.asset(
            AppAssets.profile2,
            height: 400,
            width: 500,
          ),
          Column(
            children: [
              FadeInRight(
                duration: const Duration(milliseconds: 1400),
                child: Text(
                  "About me",
                  style: AppTextStyles.headingTextStyle(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
