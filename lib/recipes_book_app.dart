import 'package:flutter/material.dart';

class RecipesBookApp extends StatelessWidget {
  const RecipesBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'Recipes Book App',
          ),
        ),
      ),
    );
  }
}
