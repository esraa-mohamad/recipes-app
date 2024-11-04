import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/features/search/presentation/screen/widgets/search_item.dart';

class SearchItemsListView extends StatelessWidget {
  const SearchItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: 15.h,
        ),
        child: SearchItem(),
      );
    },);
  }
}
