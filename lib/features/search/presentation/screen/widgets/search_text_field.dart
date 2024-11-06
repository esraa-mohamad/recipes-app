import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../manager/search_cubit.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    var searchCubit = SearchCubit.get(context);
    return  CustomTextFormField(
      controller: searchCubit.nameController,
      hintText: 'Searching recipes...',
      validator: (value) {},
      suffixIcon: Icon(
        Icons.search,
        color: AppColor.cadetGrey,
        size: 20.sp,
      ),
      onChanged: (value){
        searchCubit.searchUsingName();
      },
    );
  }
}
