import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LabDetailScreen extends StatelessWidget {
  const LabDetailScreen({super.key, required this.labId});
  final String labId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                context.router.back();
              },
              child: const Text('Back'),
            ),
            Center(child: Text('Lab detail screen $labId')),
          ],
        ),
      ),
    );
  }
}
