import 'package:flutter/material.dart';
import 'package:superhero_app/pages/hero_detail/hero_detail.dart';
import 'package:superhero_app/pages/home/home_page.dart';
import 'package:superhero_app/pages/splash/splash_page.dart';

class AppRoutes {
  static final cInitialRoute = '/';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => SplashPage());
      case '/home':
        return MaterialPageRoute(builder: (context) => HomePage());
      case '/herodetail':
        return MaterialPageRoute(builder: (context) => HeroDetail());
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
