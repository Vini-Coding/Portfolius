import 'package:flutter/material.dart';

class ResponsiveLayoutBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveLayoutBuilder({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 768) {
          return Container(
            height: size.height,
            width: size.width,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              vertical: 35,
              horizontal: size.width * 0.03,
            ),
            child: mobile,
          );
        } else if (constraints.maxWidth < 1200) {
          return Container(
            height: size.height,
            width: size.width,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: tablet,
          );
        } else {
          return Container(
            height: size.height,
            width: size.width,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
            child: desktop,
          );
        }
      },
    );
  }
}
