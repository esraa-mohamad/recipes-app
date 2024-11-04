import 'package:flutter/material.dart';
import 'package:recipes_book_app/features/search/presentation/screen/widgets/search_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBody(),
    );
  }
}
