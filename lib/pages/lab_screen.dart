import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lms/routes/routes.gr.dart';

@RoutePage()
class LabScreen extends StatelessWidget {
  const LabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        spacing: 20,
        children: [
          const Text('Lab screen'),
          ElevatedButton(
            onPressed: () {
              context.router.push(LabDetailRoute(labId: '1'));
            },
            child: const Text('Lab 1'),
          )
        ],
      ),
    );
  }
}
