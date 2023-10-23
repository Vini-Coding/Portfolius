import 'package:flutter/material.dart';
import 'package:portfolius/app/view/components/general_button_widget.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';
import '../../core/constants/constants.dart';

class ServicesCardWidget extends StatefulWidget {
  final String title;
  final String asset;
  final bool isHover;

  const ServicesCardWidget({
    super.key,
    required this.title,
    required this.asset,
    required this.isHover,
  });

  @override
  State<ServicesCardWidget> createState() => _ServicesCardWidgetState();
}

class _ServicesCardWidgetState extends State<ServicesCardWidget> {
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
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4,
            blurRadius: 4.5,
            offset: Offset(3, 4.5),
          ),
        ],
      ),
      height: widget.isHover ? 400 : 390,
      width: widget.isHover ? 400 : 390,
      child: Column(
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
            ),
          ),
          Constants.sizedBox(height: 12),
          Text(
            'I design your UI always fitting in your branding and focusing in the best experience the user can get, also developing performatic apps with clean code always with the goal of the best results.',
            style: AppTextStyles.normalTextStyle(),
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
