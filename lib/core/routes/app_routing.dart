import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/routes/routes.dart';
import 'package:recipes_book_app/features/details/presentation/screen/ui/details_screen.dart';
import 'package:recipes_book_app/features/home/presentation/screen/ui/home_screen.dart';
import 'package:recipes_book_app/features/on_boarding/presentation/screen/ui/on_boarding_screen.dart';
import 'package:recipes_book_app/features/register/presentation/screen/ui/register_screen.dart';
import 'package:recipes_book_app/features/search/presentation/screen/ui/search_screen.dart';
import 'package:recipes_book_app/features/splash/presentation/screen/ui/splash_screen.dart';

import '../../features/login/presentation/screen/ui/login_screen.dart';

class AppRouting {
  Route? generateRoute(RouteSettings routesSettings) {
    //final arguments = routesSettings.arguments;
    switch (routesSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case Routes.onBoardingScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(seconds: 3),
          // Set the duration of the animation
          pageBuilder: (context, animation, secondaryAnimation) =>
              OnBoardingScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Apply a curved animation
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: Curves.linear,
            );
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0), // Start from right side
                end: Offset.zero, // Slide to the center
              ).animate(curvedAnimation),
              child: child,
            );
          },
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case Routes.detailsScreen:
        return MaterialPageRoute(
          builder: (_) => DetailsScreen(),
        );
      case Routes.searchScreen:
        return MaterialPageRoute(
          builder: (_) => SearchScreen(),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => RegisterScreen(),
        );
        case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
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
