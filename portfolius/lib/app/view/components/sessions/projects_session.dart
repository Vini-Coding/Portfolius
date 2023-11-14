import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolius/app/core/constants/app_assets.dart';
import 'package:portfolius/app/core/utils/responsive_layout_builder.dart';

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

  int? hoverIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor2,
      body: ResponsiveLayoutBuilder(
        mobile: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ProjectsTitle(),
            Constants.sizedBox(height: 40),
            ProjectsGridView(
              images: images,
              hoverIndex: hoverIndex,
              onHoverEffect: onHoverEffect,
              crossAxisCount: 1,
            ),
          ],
        ),
        tablet: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ProjectsTitle(),
            Constants.sizedBox(height: 40),
            ProjectsGridView(
              images: images,
              hoverIndex: hoverIndex,
              onHoverEffect: onHoverEffect,
              crossAxisCount: 2,
            ),
          ],
        ),
        desktop: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ProjectsTitle(),
            Constants.sizedBox(height: 40),
            ProjectsGridView(
              images: images,
              hoverIndex: hoverIndex,
              onHoverEffect: onHoverEffect,
              crossAxisCount: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectsTitle extends StatelessWidget {
  const ProjectsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
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
    );
  }
}

// ignore: must_be_immutable
class ProjectsGridView extends StatefulWidget {
  final List<dynamic> images;
  int? hoverIndex;
  final Matrix4 onHoverEffect;
  final int crossAxisCount;
  ProjectsGridView({
    super.key,
    required this.images,
    required this.hoverIndex,
    required this.onHoverEffect,
    required this.crossAxisCount,
  });

  @override
  State<ProjectsGridView> createState() => _ProjectsGridViewState();
}

class _ProjectsGridViewState extends State<ProjectsGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.images.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.crossAxisCount,
        mainAxisExtent: 231,
        mainAxisSpacing: 24,
        crossAxisSpacing: 24,
      ),
      itemBuilder: ((context, index) {
        var image = widget.images[index];
        return FadeInUpBig(
          duration: const Duration(milliseconds: 1600),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                if (value) {
                  widget.hoverIndex = index;
                } else {
                  widget.hoverIndex = null;
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
                  visible: index == widget.hoverIndex,
                  child: AnimatedContainer(
                    transform: index == widget.hoverIndex
                        ? widget.onHoverEffect
                        : null,
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeIn,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 16,
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
                          'I design your UI always fitting in your branding and focusing in the best experience the user can get.',
                          style: AppTextStyles.normalTextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        Constants.sizedBox(height: 30),
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            AppAssets.share,
                            width: 25,
                            height: 25,
                            fit: BoxFit.fill,
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
    );
  }
}
