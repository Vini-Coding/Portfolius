// ignore: must_be_immutable
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../../core/constants/constants.dart';

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
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
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
