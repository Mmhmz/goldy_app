import 'package:flutter/material.dart';
import 'package:goldy_app/core/persentation/home_screen.dart';
import 'package:goldy_app/core/routing/routes.dart';
import 'package:goldy_app/features/gold/presentation/screens/gold_screen.dart';
import 'package:goldy_app/features/silver/presentation/screens/silver_screen.dart';

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

      case AppRoutes.goldScreen:
        return MaterialPageRoute(
          builder: (context) {
            return GoldScreen();
          },
        );

      case AppRoutes.silverscreen:
        return MaterialPageRoute(
          builder: (context) {
            return SilverScreen();
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
