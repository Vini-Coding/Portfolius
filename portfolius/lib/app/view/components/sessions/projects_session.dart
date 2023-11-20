import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolius/app/core/constants/app_assets.dart';
import 'package:portfolius/app/core/utils/responsive_layout_builder.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../../core/constants/constants.dart';
import '../widgets/projects_gridview_component.dart';

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
    return ResponsiveLayoutBuilder(
      backgroundColor: AppColors.backgroundColor2,
      paddingWidth: size.width * 0.1,
      mobile: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ProjectsTitle(),
          Constants.sizedBox(height: 25),
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
          Constants.sizedBox(height: 25),
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
          Constants.sizedBox(height: 25),
          ProjectsGridView(
            images: images,
            hoverIndex: hoverIndex,
            onHoverEffect: onHoverEffect,
            crossAxisCount: 3,
          ),
        ],
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