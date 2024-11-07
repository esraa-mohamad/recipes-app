import 'package:flutter/material.dart';
import 'package:recipes_book_app/features/saved_screen/presentation/screen/widgets/saved_items_bloc_builder.dart';

class SavedBody extends StatelessWidget {
  const SavedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18 , vertical: 12
        ),
        child: Column(
          children: [
            Expanded(child: SavedItemsBlocBuilder()),
          ],
        ),
      ),
    );
  }
}
