import 'package:flutter/material.dart';
import 'package:portfolius/app/core/constants/app_text_styles.dart';
import 'package:portfolius/app/core/constants/constants.dart';
import 'package:portfolius/app/view/components/sessions/about_me_session.dart';
import 'package:portfolius/app/view/components/sessions/contact_session.dart';
import 'package:portfolius/app/view/components/sessions/footer_session.dart';
import 'package:portfolius/app/view/components/sessions/projects_session.dart';
import 'package:portfolius/app/view/components/sessions/services_session.dart';
import 'package:portfolius/app/view/components/widgets/navbar_nagiation_widget.dart';
import 'package:portfolius/app/view/home_view.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../core/constants/app_assets.dart';
import '../core/constants/app_colors.dart';

class DashboardView extends StatefulWidget {
  static const routeName = "/";

  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final ItemScrollController _itemScrollController = ItemScrollController();
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

  final List<Widget> screenList = [
    const HomeView(),
    const AboutMeSession(),
    const ServicesSession(),
    const ProjectsSession(),
    const ContactSession(),
    const FooterSession(),
  ];

  Future<void> scrollTo({required int index}) async {
    _itemScrollController
        .scrollTo(
      index: index,
      duration: const Duration(seconds: 2),
      curve: Curves.fastLinearToSlowEaseIn,
    )
        .whenComplete(
      () {
        setState(() {
          menuIndex = index;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        toolbarHeight: 100,
        titleSpacing: 40,
        elevation: 0,
        title: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 768) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("Portfolio"),
                  const Spacer(),
                  PopupMenuButton(
                    color: AppColors.backgroundColor2,
                    position: PopupMenuPosition.under,
                    constraints: BoxConstraints.tightFor(
                      width: size.width * 0.9,
                    ),
                    icon: Icon(
                      Icons.menu_sharp,
                      size: 32,
                      color: AppColors.white,
                    ),
                    itemBuilder: (context) => menuItems
                        .asMap()
                        .entries
                        .map(
                          (e) => PopupMenuItem(
                            onTap: () {
                              scrollTo(index: e.key);
                            },
                            textStyle: AppTextStyles.headerTextStyle(),
                            child: Text(e.value),
                          ),
                        )
                        .toList(),
                  ),
                ],
              );
            } else {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("Portfolio"),
                  const Spacer(),
                  SizedBox(
                    height: 30,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            scrollTo(index: index);
                          },
                          borderRadius: BorderRadius.circular(100),
                          onHover: (value) {
                            setState(
                              () {
                                if (value) {
                                  menuIndex = index;
                                } else {
                                  menuIndex = 0;
                                }
                              },
                            );
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
                  Constants.sizedBox(width: 30),
                ],
              );
            }
          },
        ),
      ),
      body: Scrollbar(
        trackVisibility: true,
        child: ScrollablePositionedList.builder(
          itemCount: screenList.length,
          itemScrollController: _itemScrollController,
          itemBuilder: (context, index) {
            return screenList[index];
          },
        ),
      ),
    );
  }
}
