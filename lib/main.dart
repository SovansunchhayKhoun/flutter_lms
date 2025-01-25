import 'package:flutter/material.dart';
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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Digi-Lab'),
        ),
        body: isLoggedIn ? const Text('Testing') : const LoginScreen(),
      ),
    );
  }
}
