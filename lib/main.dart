import 'package:flutter/material.dart';
import 'package:news_app/utils/routes/routes.dart';
import 'package:news_app/utils/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       initialRoute: RoutesName.splash,
        onGenerateRoute: Routes.generateRoute
      
    );
  }
}

