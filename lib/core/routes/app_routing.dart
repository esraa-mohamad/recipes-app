import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/routes/routes.dart';
import 'package:recipes_book_app/features/on_boarding/presentation/screen/ui/on_boarding_screen.dart';
import 'package:recipes_book_app/features/splash/presentation/screen/ui/splash_screen.dart';

class AppRouting {
  Route? generateRoute(RouteSettings routesSettings) {
    //final arguments = routesSettings.arguments;
    switch (routesSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
       case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
        );
       
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${routesSettings.name}'),
            ),
          ),
        );
    }
  }
}
