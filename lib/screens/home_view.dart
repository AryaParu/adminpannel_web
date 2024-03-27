import "package:adminpannel_web/screens/sidebar.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

import "../constants.dart";
import "dashboard_view.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: bgColor,
            body: Row(
              children: [
                Expanded(child: SideBar()),
                Expanded(flex: 5, child: DashboardView()),
              ],
            )));
  }
}
