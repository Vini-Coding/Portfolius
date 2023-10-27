import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';

class ProfileAnimationWidget extends StatefulWidget {
  const ProfileAnimationWidget({super.key});

  @override
  State<ProfileAnimationWidget> createState() => _ProfileAnimationWidgetState();
}

class _ProfileAnimationWidgetState extends State<ProfileAnimationWidget>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);

    _animation = Tween(begin: const Offset(0, 0.01), end: const Offset(0, 0.1))
        .animate(_animationController);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset(
        AppAssets.profile1,
        width: 360,
        height: 390,
      ),
    );
  }
}
