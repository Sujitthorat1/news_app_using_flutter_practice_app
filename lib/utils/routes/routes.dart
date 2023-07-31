import 'package:flutter/material.dart';
import 'package:news_app/utils/routes/routes_name.dart';
import 'package:news_app/views/screens/home_screen.dart';
import 'package:news_app/views/screens/splash_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case RoutesName.splash:
        return MaterialPageRoute(builder:(context) => const SplashScreen(),);
      case RoutesName.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text("No route defines")),
          );
        });
    }
  }
}
