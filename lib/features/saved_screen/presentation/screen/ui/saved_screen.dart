import 'package:flutter/material.dart';
import 'package:recipes_book_app/features/saved_screen/presentation/screen/widgets/saved_body.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SavedBody(),
    );
  }
}
