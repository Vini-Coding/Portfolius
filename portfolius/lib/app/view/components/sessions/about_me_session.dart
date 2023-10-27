import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolius/app/core/constants/app_assets.dart';
import 'package:portfolius/app/core/constants/app_colors.dart';
import 'package:portfolius/app/core/constants/constants.dart';
import 'package:portfolius/app/view/components/widgets/general_button_widget.dart';

import '../../../core/constants/app_text_styles.dart';

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
      width: size.width,
      color: AppColors.backgroundColor2,
      padding: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: size.width * 0.1,
      ),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.profile2,
            height: 400,
            width: 500,
          ),
          Constants.sizedBox(width: 25),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FadeInRight(
                  duration: const Duration(milliseconds: 1200),
                  child: RichText(
                    text: TextSpan(
                      text: "About ",
                      style: AppTextStyles.headingTextStyle(fontSize: 30),
                      children: [
                        TextSpan(
                          text: "Me",
                          style: AppTextStyles.headingTextStyle(
                            fontSize: 30,
                            color: AppColors.robinEdgeBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Constants.sizedBox(height: 6),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1600),
                  child: Text(
                    "Flutter developer",
                    style:
                        AppTextStyles.montserratTextStyle(color: Colors.white),
                  ),
                ),
                Constants.sizedBox(height: 6),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1600),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                    style: AppTextStyles.normalTextStyle(),
                  ),
                ),
                Constants.sizedBox(height: 15),
                FadeInUp(
                  duration: const Duration(milliseconds: 1800),
                  child: GeneralButton(
                    text: "Read more",
                    onTap: () {},
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
