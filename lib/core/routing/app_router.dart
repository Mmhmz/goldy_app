import 'package:flutter/material.dart';
import 'package:goldy_app/core/persentation/home_screen.dart';
import 'package:goldy_app/core/routing/routes.dart';

//! للتحكم في الانتقالات بين الصفحات

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold();
          },
        );
    }
  }
}
