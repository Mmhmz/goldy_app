import 'package:flutter/material.dart';
import 'package:goldy_app/core/routing/routes.dart';
import 'core/routing/app_router.dart';

void main() {
  runApp(const goldyApp());
}

class goldyApp extends StatelessWidget {
  const goldyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeScreen,
      onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}
