import 'package:flutter/material.dart';
import 'package:portfolius/app/core/constants/app_colors.dart';
import 'package:portfolius/app/core/constants/app_text_styles.dart';

class GeneralButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const GeneralButton({
    super.key,
    required this.text,
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
        text,
        style: AppTextStyles.headerTextStyle(),
      ),
    );
  }
}
