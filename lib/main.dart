import 'package:flutter/material.dart';
import 'package:flutter_lms/constants/app_constant.dart';
import 'package:flutter_lms/layouts/layout.dart';
import 'package:flutter_lms/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final bool isLoggedIn = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        bottom: false,
        top: false,
        child: isLoggedIn ? const RootLayout() : const LoginScreen(),
      ),
      title: AppConstant.appName,
    );
  }
}
