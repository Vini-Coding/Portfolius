import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolius/app/core/constants/app_assets.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../../core/constants/constants.dart';

class ProjectsSession extends StatefulWidget {
  const ProjectsSession({super.key});

  @override
  State<ProjectsSession> createState() => _ProjectsSessionState();
}

class _ProjectsSessionState extends State<ProjectsSession> {
  final onHoverEffect = Matrix4.identity()..scale(1.0);

  List images = <String>[
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
  ];

  var hoverIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.backgroundColor2,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        vertical: 30,
        horizontal: size.width * 0.1,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: RichText(
              text: TextSpan(
                text: "Latest ",
                style: AppTextStyles.headingTextStyle(fontSize: 30),
                children: [
                  TextSpan(
                    text: "Projects",
                    style: AppTextStyles.headingTextStyle(
                      fontSize: 30,
                      color: AppColors.robinEdgeBlue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Constants.sizedBox(height: 40),
          GridView.builder(
            itemCount: images.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 231,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
            ),
            itemBuilder: ((context, index) {
              var image = images[index];
              return FadeInUpBig(
                duration: const Duration(milliseconds: 1600),
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      if (value) {
                        hoverIndex = index;
                      }
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage(image),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Visibility(
                        visible: index == hoverIndex,
                        child: AnimatedContainer(
                          transform: index == hoverIndex ? onHoverEffect : null,
                          duration: const Duration(milliseconds: 300),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                AppColors.themeColor.withOpacity(1.0),
                                AppColors.themeColor.withOpacity(0.9),
                                AppColors.themeColor.withOpacity(0.8),
                                AppColors.themeColor.withOpacity(0.6),
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'App Development',
                                style: AppTextStyles.montserratTextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                ),
                              ),
                              Constants.sizedBox(height: 15),
                              Text(
                                'I design your UI always fitting in your branding and focusing in the best experience the user can get, also developing performatic apps with clean code always with the goal of the best results.',
                                style: AppTextStyles.normalTextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
