import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolius/app/core/constants/app_assets.dart';
import 'package:portfolius/app/core/constants/app_colors.dart';
import 'package:portfolius/app/view/components/services_card_widget.dart';

import '../../../core/constants/app_text_styles.dart';
import '../../../core/constants/constants.dart';

class ServicesSession extends StatefulWidget {
  const ServicesSession({super.key});

  @override
  State<ServicesSession> createState() => _ServicesSessionState();
}

class _ServicesSessionState extends State<ServicesSession> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.backgroundColor,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
      child: Column(
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                text: "My ",
                style: AppTextStyles.headingTextStyle(fontSize: 30),
                children: [
                  TextSpan(
                    text: "Services",
                    style: AppTextStyles.headingTextStyle(
                      fontSize: 30,
                      color: AppColors.robinEdgeBlue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Constants.sizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isHover = value;
                  });
                },
                child: ServicesCardWidget(
                  title: "Code",
                  asset: AppAssets.code,
                  isHover: isHover,
                ),
              ),
              Constants.sizedBox(width: 18),
              ServicesCardWidget(
                title: "UI Design",
                asset: AppAssets.brush,
                isHover: isHover,
              ),
              Constants.sizedBox(width: 18),
              ServicesCardWidget(
                title: "Quality Assurance",
                asset: AppAssets.analyst,
                isHover: isHover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
