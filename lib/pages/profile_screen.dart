import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lms/routes/routes.gr.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        spacing: 20,
        children: [
          const Text('Profile screen'),
          ElevatedButton(
            onPressed: () {
              context.router.push(const LabRoute());
            },
            child: const Text('To lab'),
          )
        ],
      ),
    );
  }
}
