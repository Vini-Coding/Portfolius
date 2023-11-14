import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolius/app/core/constants/app_assets.dart';
import 'package:portfolius/app/core/constants/app_colors.dart';
import 'package:portfolius/app/core/utils/responsive_layout_builder.dart';
import 'package:portfolius/app/view/components/widgets/services_card_widget.dart';

import '../../../core/constants/app_text_styles.dart';
import '../../../core/constants/constants.dart';

class ServicesSession extends StatefulWidget {
  const ServicesSession({super.key});

  @override
  State<ServicesSession> createState() => _ServicesSessionState();
}

class _ServicesSessionState extends State<ServicesSession> {
  bool isApp = false, isUI = false, isQA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ResponsiveLayoutBuilder(
        mobile: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const MyServicesText(),
            Constants.sizedBox(height: 40),
            InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  isApp = value;
                });
              },
              child: ServicesCardWidget(
                title: "Code",
                asset: AppAssets.code,
                isHover: isApp,
              ),
            ),
            Constants.sizedBox(width: 18),
            InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  isUI = value;
                });
              },
              child: ServicesCardWidget(
                title: "UI Design",
                asset: AppAssets.brush,
                isHover: isUI,
              ),
            ),
            Constants.sizedBox(width: 18),
            InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  isQA = value;
                });
              },
              child: ServicesCardWidget(
                title: "Quality Assurance",
                asset: AppAssets.analyst,
                isHover: isQA,
              ),
            ),
          ],
        ),
        tablet: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const MyServicesText(),
            Constants.sizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isApp = value;
                    });
                  },
                  child: ServicesCardWidget(
                    title: "Code",
                    asset: AppAssets.code,
                    isHover: isApp,
                  ),
                ),
                Constants.sizedBox(width: 24),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isUI = value;
                    });
                  },
                  child: ServicesCardWidget(
                    title: "UI Design",
                    asset: AppAssets.brush,
                    isHover: isUI,
                  ),
                ),
              ],
            ),
            Constants.sizedBox(width: 26),
            InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  isQA = value;
                });
              },
              child: ServicesCardWidget(
                title: "Quality Assurance",
                asset: AppAssets.analyst,
                isHover: isQA,
                width: 725,
                hoverWidth: 735,
              ),
            ),
          ],
        ),
        desktop: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const MyServicesText(),
            Constants.sizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isApp = value;
                    });
                  },
                  child: ServicesCardWidget(
                    title: "Code",
                    asset: AppAssets.code,
                    isHover: isApp,
                  ),
                ),
                Constants.sizedBox(width: 18),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isUI = value;
                    });
                  },
                  child: ServicesCardWidget(
                    title: "UI Design",
                    asset: AppAssets.brush,
                    isHover: isUI,
                  ),
                ),
                Constants.sizedBox(width: 18),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isQA = value;
                    });
                  },
                  child: ServicesCardWidget(
                    title: "Quality Assurance",
                    asset: AppAssets.analyst,
                    isHover: isQA,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // Container(
      //   width: size.width,
      //   height: size.height,
      //   color: AppColors.backgroundColor,
      //   alignment: Alignment.center,
      //   padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
      //   child:
      // ),
    );
  }
}

class MyServicesText extends StatelessWidget {
  const MyServicesText({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
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
    );
  }
}
