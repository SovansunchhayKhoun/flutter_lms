import 'package:flutter/material.dart';
import 'package:flutter_lms/constants/app_constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 40,
          children: [
            // Logo
            const Image(
              image: AssetImage(AppConstant.logoPath),
              fit: BoxFit.cover,
              width: 200,
            ),
            // Text
            const Text(
              'Sign in to ${AppConstant.appName}',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),

            // Form
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: _buildForm(context))

            // Footer
          ],
        ),
      ),
    ));
  }

  Widget _buildForm(BuildContext buildContext) {
    return const Column(
      spacing: 10,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Username or Email Address',
            border: OutlineInputBorder(),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        )
      ],
    );
  }
}
