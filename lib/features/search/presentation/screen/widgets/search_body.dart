import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/widgets/custom_text_form_field.dart';
import 'package:recipes_book_app/features/search/presentation/screen/widgets/search_items_list_view.dart';

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
            CustomTextFormField(
              hintText: 'Searching recipes...',
              validator: (value) {},
              suffixIcon: Icon(
                Icons.search,
                color: AppColor.cadetGrey,
                size: 20.sp,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Expanded(
              child: SearchItemsListView(),
            ),
          ],
        ),
      ),
    );
  }
}
