import 'package:flutter/material.dart';
import 'package:portfolius/app/view/components/widgets/general_button_widget.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_text_styles.dart';
import '../../../core/constants/constants.dart';

// ignore: must_be_immutable
class ServicesCardWidget extends StatefulWidget {
  final String title;
  final String asset;
  final bool isHover;
  double width;
  double hoverWidth;

  ServicesCardWidget({
    super.key,
    required this.title,
    required this.asset,
    required this.isHover,
    this.width = 350,
    this.hoverWidth = 360,
  });

  @override
  State<ServicesCardWidget> createState() => _ServicesCardWidgetState();
}

class _ServicesCardWidgetState extends State<ServicesCardWidget> {
  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 600,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 24,
      ),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor2,
        borderRadius: BorderRadius.circular(30),
        border: widget.isHover
            ? Border.all(color: AppColors.themeColor, width: 2)
            : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4,
            blurRadius: 4.5,
            offset: Offset(3, 4.5),
          ),
        ],
      ),
      height: widget.isHover ? widget.hoverWidth : widget.width,
      width: widget.isHover ? 390 : 380,
      transform: widget.isHover ? onHoverActive : onHoverRemove,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            widget.asset,
            width: 50,
            height: 50,
            color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 30),
          Text(
            widget.title,
            style: AppTextStyles.montserratTextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          Constants.sizedBox(height: 12),
          Text(
            'I design your UI always fitting in your branding and focusing in the best experience the user can get, also developing performatic apps with clean code always with the goal of the best results.',
            style: AppTextStyles.normalTextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 16),
          GeneralButton(
            text: "Read More",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
