import 'package:flutter/material.dart';
import 'package:portfolius/app/view/home_view.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.routeName: (context) => const HomeView(),
      },
    );
  }
}