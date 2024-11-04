import 'package:flutter/material.dart';
import 'package:recipes_book_app/recipes_book_app.dart';

import 'core/routes/app_routing.dart';

void main() {
  runApp(
    RecipesBookApp(
      appRouting: AppRouting(),
    ),
  );
}
