import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/features/login/presentation/manager/login_cubit.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    var loginCubit = LoginCubit.get(context);
    return Form(
      key: loginCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormField(
            controller: loginCubit.emailController,
            hintText: 'Email',
            prefixIcon: Icon(
              Icons.email,
              color: AppColor.cadetGrey,
              size: 24.sp,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Should enter email";
              }
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomTextFormField(
            controller: loginCubit.passwordController,
            hintText: 'Password',
            prefixIcon: Icon(
              Icons.password,
              color: AppColor.cadetGrey,
              size: 24.sp,
            ),
            obscureText: loginCubit.isPasswordObscure,
            suffixIcon: IconButton(
              onPressed: () {
                loginCubit.passwordObscureChange();
              },
              icon: Icon(
                loginCubit.isPasswordObscure
                    ? Icons.visibility_off
                    : Icons.visibility,
                size: 24.sp,
                color: AppColor.cadetGrey,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Should enter password";
              }
            },
          ),
        ],
      ),
    );
  }
}
