
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormField(
            hintText: 'Email',
            validator: (value) {},
            prefixIcon: Icon(
              Icons.email,
              color: AppColor.cadetGrey,
              size: 24.sp,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'Password',
            validator: (value) {},
            prefixIcon: Icon(
              Icons.password,
              color: AppColor.cadetGrey,
              size: 24.sp,
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.visibility,
                size: 24.sp,
                color: AppColor.cadetGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
