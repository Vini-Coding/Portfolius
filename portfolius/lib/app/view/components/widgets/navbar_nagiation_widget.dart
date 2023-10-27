import 'package:flutter/material.dart';
import 'package:portfolius/app/core/constants/app_text_styles.dart';

import '../../../core/constants/app_colors.dart';

class NavbarNagiationWidget extends StatefulWidget {
  final int index;
  final bool isHovered;
  final List<String> itemsList;
  final Matrix4 onMenuHover;
  const NavbarNagiationWidget({
    super.key,
    required this.index,
    required this.isHovered,
    required this.itemsList,
    required this.onMenuHover,
  });

  @override
  State<NavbarNagiationWidget> createState() => _NavbarNagiationWidgetState();
}

class _NavbarNagiationWidgetState extends State<NavbarNagiationWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: widget.isHovered ? 80 : 75,
      duration: const Duration(milliseconds: 200),
      transform: widget.isHovered ? widget.onMenuHover : null,
      child: Text(
        widget.itemsList[widget.index],
        style: AppTextStyles.headerTextStyle(
          color: widget.isHovered ? AppColors.themeColor : AppColors.white,
        ),
      ),
    );
  }
}
