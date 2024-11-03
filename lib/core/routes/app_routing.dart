import 'package:flutter/material.dart';

class AppRouting {
  Route? generateRoute(RouteSettings routesSettings) {
    final arguments = routesSettings.arguments;
    switch (routesSettings.name) {
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
