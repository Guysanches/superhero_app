import 'package:flutter/material.dart';
import 'package:superhero_app/pages/home/home_page.dart';
import 'package:superhero_app/pages/splash/splash_page.dart';

class AppRoutes {
  static final cInitialRoute = '/';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final argss = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => SplashPage());
      case '/home':
        return MaterialPageRoute(builder: (context) => HomePage());
      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text('Error Access Page'),
              ),
            ),
            body: Center(
              child: Text('Page not found'),
            ),
          );
        });
    }
  }
}
