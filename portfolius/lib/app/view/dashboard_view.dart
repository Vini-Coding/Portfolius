import 'package:flutter/material.dart';
import 'package:portfolius/app/core/constants/constants.dart';
import 'package:portfolius/app/view/components/widgets/navbar_nagiation_widget.dart';
import 'package:portfolius/app/view/home_view.dart';

import '../core/constants/app_assets.dart';
import '../core/constants/app_colors.dart';

class DashboardView extends StatefulWidget {
  static const routeName = "/";

  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
   final onMenuHover = Matrix4.identity()..scale(1);
  final menuItems = <String>[
    "Home",
    "About Me",
    "Services",
    "Projects",
    "Contact",
  ];

  final socialButtons = <String>[
    AppAssets.linkedin,
    AppAssets.github,
    AppAssets.linkedin,
  ];

  var menuIndex = 0;
  var socialBI;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        toolbarHeight: 100,
        titleSpacing: 100,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text("Portfolio"),
            const Spacer(),
            SizedBox(
              height: 30,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(100),
                    onHover: (value) {
                      setState(() {
                        if (value) {
                          menuIndex = index;
                        } else {
                          menuIndex = 0;
                        }
                      });
                    },
                    child: NavbarNagiationWidget(
                      index: index,
                      isHovered: menuIndex == index ? true : false,
                      itemsList: menuItems,
                      onMenuHover: onMenuHover,
                    ),
                  );
                },
                separatorBuilder: (context, index) => Constants.sizedBox(
                  width: 8,
                ),
                itemCount: menuItems.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
      body: const HomeView(),
    );
  }
}