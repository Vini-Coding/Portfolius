import 'package:flutter/material.dart';
import 'package:portfolius/app/core/constants/app_colors.dart';

class SocialMediaButton extends StatefulWidget {
  final List<String> assets;
  final int index;
  final void Function()? onTap;
  final void Function(bool value)? onHover;
  final bool isHovered;

  const SocialMediaButton({
    super.key,
    required this.assets,
    required this.index,
    required this.onTap,
    required this.onHover,
    required this.isHovered,
  });

  @override
  State<SocialMediaButton> createState() => _SocialMediaButtonState();
}

class _SocialMediaButtonState extends State<SocialMediaButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(550),
      hoverColor: AppColors.themeColor,
      splashColor: AppColors.lawGreen,
      onTap: widget.onTap,
      onHover: widget.onHover,
      child: Ink(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.themeColor, width: 2),
          color: AppColors.backgroundColor,
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(6),
        child: Image.asset(
          widget.assets[widget.index],
          height: 12,
          width: 10,
          color: widget.isHovered
              ? AppColors.backgroundColor
              : AppColors.themeColor,
        ),
      ),
    );
  }
}
