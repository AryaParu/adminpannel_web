import 'package:adminpannel_web/screens/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        cardColor: secondaryColor,
        scaffoldBackgroundColor: primaryColor,
        canvasColor: secondaryColor,
      ),
      home: const HomeView(),
    );
  }
}
