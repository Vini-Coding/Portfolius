import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolius/app/view/components/widgets/profile_animation_widget.dart';
import '../core/constants/app_assets.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_text_styles.dart';
import '../core/constants/constants.dart';
import '../core/utils/responsive_layout_builder.dart';
import 'components/widgets/social_media_button_widget.dart';
import 'components/widgets/general_button_widget.dart';

class HomeView extends StatefulWidget {
  static const routeName = '/home';
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
      body: ResponsiveLayoutBuilder(
        mobile: SingleChildScrollView(
          child: Column(
            children: [
              HomeColumnComponent(size: size),
              Constants.sizedBox(height: 25),
              const ProfileAnimationWidget(),
            ],
          ),
        ),
        tablet: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: HomeColumnComponent(size: size)),
            const ProfileAnimationWidget(),
          ],
        ),
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: HomeColumnComponent(size: size)),
            const ProfileAnimationWidget(),
          ],
        ),
      ),
    );
  }
}

class HomeColumnComponent extends StatefulWidget {
  final Size size;
  const HomeColumnComponent({
    super.key,
    required this.size,
  });

  @override
  State<HomeColumnComponent> createState() => _HomeColumnComponentState();
}

class _HomeColumnComponentState extends State<HomeColumnComponent> {
  final socialButtons = <String>[
    AppAssets.linkedin,
    AppAssets.github,
    AppAssets.linkedin,
  ];

  int? socialBI;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: Text(
            "Hello World, I'm",
            style: AppTextStyles.montserratTextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInRight(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            "Vini",
            style: AppTextStyles.headingTextStyle(),
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Row(
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
        ),
        Constants.sizedBox(height: 15),
        FadeInDown(
          duration: const Duration(milliseconds: 1600),
          child: Expanded(
            child: Text(
              "I design your UI always fitting in your branding and focusing in the best experience the user can get, also developing performatic apps with clean code always with the goal of the best results.",
              style: AppTextStyles.normalTextStyle(),
            ),
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInUp(
          duration: const Duration(milliseconds: 1600),
          child: SizedBox(
            height: 48,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return SocialMediaButton(
                  assets: socialButtons,
                  index: index,
                  onTap: () {},
                  onHover: (value) {
                    setState(
                      () {
                        if (value) {
                          socialBI = index;
                        } else {
                          socialBI = null;
                        }
                      },
                    );
                  },
                  isHovered: socialBI == index,
                );
              },
              separatorBuilder: (context, index) => Constants.sizedBox(
                width: 8,
              ),
              itemCount: socialButtons.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
            ),
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: GeneralButton(text: 'Download CV', onTap: () {}),
        ),
      ],
    );
  }
}
