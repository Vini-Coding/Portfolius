import 'package:flutter/material.dart';
import 'package:portfolius/app/core/constants/app_colors.dart';

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
