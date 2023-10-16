import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../core/constants/app_assets.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_text_styles.dart';
import '../core/constants/constants.dart';

class HomeView extends StatefulWidget {
  static const routeName = '/';
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        toolbarHeight: 100,
        titleSpacing: 100,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text("Portfolio"),
            const Spacer(),
            Text("Home", style: AppTextStyles.headerTextStyle()),
            const SizedBox(width: 30),
            Text("About", style: AppTextStyles.headerTextStyle()),
            const SizedBox(width: 30),
            Text("Services", style: AppTextStyles.headerTextStyle()),
            const SizedBox(width: 30),
            Text("Projects", style: AppTextStyles.headerTextStyle()),
            const SizedBox(width: 30),
            Text("Articles", style: AppTextStyles.headerTextStyle()),
            const SizedBox(width: 30),
            Text("Contact", style: AppTextStyles.headerTextStyle()),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: size.height * 0.3,
          left: size.width * 0.2,
          right: size.width * 0.2,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello World, I'm",
                      style: AppTextStyles.montserratTextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    Text(
                      "Vini",
                      style: AppTextStyles.headingTextStyle(),
                    ),
                    Constants.sizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "And I'm a ",
                          style: AppTextStyles.montserratTextStyle(
                            color: Colors.white,
                          ),
                        ),
                        AnimatedTextKit(
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                          animatedTexts: [
                            TyperAnimatedText(
                              'Flutter Developer',
                              textStyle: AppTextStyles.montserratTextStyle(
                                color: Colors.lightBlue,
                              ),
                            ),
                            TyperAnimatedText(
                              'UI Designer',
                              textStyle: AppTextStyles.montserratTextStyle(
                                color: Colors.lightBlue,
                              ),
                            ),
                            TyperAnimatedText(
                              'Tester',
                              textStyle: AppTextStyles.montserratTextStyle(
                                color: Colors.lightBlue,
                              ),
                            ),
                            TyperAnimatedText(
                              'Freelancer',
                              textStyle: AppTextStyles.montserratTextStyle(
                                color: Colors.lightBlue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Constants.sizedBox(height: 15),
                    SizedBox(
                      width: size.width * 0.5,
                      child: Text(
                        "I design your UI always fitting in your branding and focusing in the best experience the user can get, also developing performatic apps with clean code always with the goal of the best results.",
                        style: AppTextStyles.normalTextStyle(),
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    Row(
                      children: [
                        SocialMediaButton(asset: AppAssets.github),
                        Constants.sizedBox(width: 12),
                        SocialMediaButton(asset: AppAssets.linkedin),
                        Constants.sizedBox(width: 12),
                        SocialMediaButton(asset: AppAssets.medium),
                      ],
                    ),
                    Constants.sizedBox(height: 15),
                    GeneralButton(onTap: () {}),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GeneralButton extends StatelessWidget {
  final void Function()? onTap;
  const GeneralButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColors.themeColor,
      hoverColor: AppColors.aqua,
      splashColor: AppColors.lawGreen,
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 10,
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      height: 46,
      minWidth: 130,
      elevation: 6,
      focusElevation: 12,
      onPressed: onTap,
      child: Text(
        "Download CV",
        style: AppTextStyles.headerTextStyle(),
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final String asset;
  const SocialMediaButton({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.backgroundColor, width: 2),
        color: AppColors.backgroundColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: InkWell(
        radius: 50,
        borderRadius: BorderRadius.circular(500),
        hoverColor: AppColors.aqua,
        splashColor: AppColors.lawGreen,
        onTap: () {},
        child: CircleAvatar(
          maxRadius: 20,
          backgroundColor: AppColors.themeColor,
          child: CircleAvatar(
            maxRadius: 18,
            backgroundColor: AppColors.backgroundColor,
            child: Image.asset(
              asset,
              height: 20,
              width: 24,
              fit: BoxFit.contain,
              color: AppColors.themeColor,
            ),
          ),
        ),
      ),
    );
  }
}
