import 'package:flutter/material.dart';
import 'package:flutter_lms/constants/app_constant.dart';
import 'package:flutter_lms/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      title: AppConstant.appName,
    );
  }
}
