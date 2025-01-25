import 'package:flutter/material.dart';
import 'package:flutter_lms/pages/home_screen.dart';

class ScreenMeta {
  final String screenTitle;
  final Widget screen;

  ScreenMeta({required this.screenTitle, required this.screen});
}

class Routes {
  final List<ScreenMeta> pageRoutes = [
    ScreenMeta(screenTitle: 'Home Screen', screen: const HomeScreen()),
    ScreenMeta(screenTitle: 'Lab Screen', screen: const HomeScreen())
  ];

  List<ScreenMeta> getPageRoutes() {
    return pageRoutes;
  }
}
