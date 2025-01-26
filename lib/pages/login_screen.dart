import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lms/constants/app_constant.dart';
import 'package:flutter_lms/shared/widgets/text_input.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.onResult});

  final void Function(bool success) onResult;

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
    return Column(
      spacing: 16,
      children: [
        const TextInput(
          labelText: 'Username or Email Address',
          hintText: "Your username or email address...",
        ),
        const TextInput(
          labelText: 'Password',
          hintText: "Your password...",
          leadingLabel: Text(
            'Forgot password?',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(
              const Size(double.infinity, 50),
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            backgroundColor: WidgetStateProperty.all(
              Colors.blue,
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Sign in',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
