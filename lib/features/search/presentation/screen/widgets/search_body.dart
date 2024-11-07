import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/features/search/presentation/screen/widgets/search_items_list_view_bloc_builder.dart';
import 'package:recipes_book_app/features/search/presentation/screen/widgets/search_text_field.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 24.h,
        ),
        child: Column(
          children: [
            SearchTextField(),
            SizedBox(
              height: 40.h,
            ),
            Expanded(
              child: SearchItemsListViewBlocBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
