import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/di/dependency_injection.dart';
import 'package:recipes_book_app/recipes_book_app.dart';

import 'core/routes/app_routing.dart';

void main() {
  setup();
  runApp(
    RecipesBookApp(
      appRouting: AppRouting(),
    ),
  );
}
