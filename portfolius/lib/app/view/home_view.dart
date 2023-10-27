import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolius/app/view/components/sessions/contact_session.dart';
import 'package:portfolius/app/view/components/sessions/footer_session.dart';
import 'package:portfolius/app/view/components/widgets/navbar_nagiation_widget.dart';
import 'package:portfolius/app/view/components/widgets/profile_animation_widget.dart';
import 'package:portfolius/app/view/components/sessions/projects_session.dart';
import 'package:portfolius/app/view/components/sessions/services_session.dart';

import '../core/constants/app_assets.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_text_styles.dart';
import '../core/constants/constants.dart';
import 'components/sessions/about_me_session.dart';
import 'components/widgets/social_media_button_widget.dart';
import 'components/widgets/general_button_widget.dart';

class HomeView extends StatefulWidget {
  static const routeName = '/';
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final onMenuHover = Matrix4.identity()..scale(1);
  final menuItems = <String>[
    "Home",
    "About Me",
    "Services",
    "Projects",
    "Contact",
  ];

  final socialButtons = <String>[
    AppAssets.linkedin,
    AppAssets.github,
    AppAssets.linkedin,
  ];

  var menuIndex = 0;
  var socialBI;

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
            SizedBox(
              height: 30,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(100),
                    onHover: (value) {
                      setState(() {
                        if (value) {
                          menuIndex = index;
                        } else {
                          menuIndex = 0;
                        }
                      });
                    },
                    child: NavbarNagiationWidget(
                      index: index,
                      isHovered: menuIndex == index ? true : false,
                      itemsList: menuItems,
                      onMenuHover: onMenuHover,
                    ),
                  );
                },
                separatorBuilder: (context, index) => Constants.sizedBox(
                  width: 8,
                ),
                itemCount: menuItems.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: size.height * 0.05,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: size.width * 0.1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
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
                        child: SizedBox(
                          width: size.width * 0.5,
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
                                  setState(() {
                                    if(value) {
                                      socialBI = index;
                                    } else {
                                      socialBI = null;
                                    }
                                  });
                                },
                                isHovered: socialBI == index,
                              );
                            },
                            separatorBuilder: (context, index) =>
                                Constants.sizedBox(
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
                  ),
                  const ProfileAnimationWidget(),
                ],
              ),
            ),
            const SizedBox(height: 220),
            const AboutMeSession(),
            const ServicesSession(),
            const ProjectsSession(),
            const ContactSession(),
            const FooterSession(),
          ],
        ),
      ),
    );
  }
}
