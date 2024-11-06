import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/di/dependency_injection.dart';
import 'package:recipes_book_app/recipes_book_app.dart';

import 'core/routes/app_routing.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setup();
  runApp(
    RecipesBookApp(
      appRouting: AppRouting(),
    ),
  );
}
