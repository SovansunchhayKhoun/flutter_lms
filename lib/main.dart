import 'package:flutter/material.dart';
import 'package:flutter_lms/layouts/layout.dart';
import 'package:flutter_lms/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: isLoggedIn ? const LoginScreen() : const RootLayout()),
      title: 'Digi-lab LMS',
    );
  }
}
