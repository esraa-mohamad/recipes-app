import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/widgets/custom_text_form_field.dart';
import 'package:recipes_book_app/features/register/presentation/manager/register_cubit.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    var registerCubit = RegisterCubit.get(context);
    return Form(
      key: registerCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormField(
            controller: registerCubit.nameController,
            hintText: 'Name',
            prefixIcon: Icon(
              Icons.person,
              color: AppColor.cadetGrey,
              size: 24.sp,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Should enter name";
              }
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomTextFormField(
            controller: registerCubit.emailController,
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
            controller: registerCubit.passwordController,
            hintText: 'Password',
            prefixIcon: Icon(
              Icons.password,
              color: AppColor.cadetGrey,
              size: 24.sp,
            ),
            obscureText: registerCubit.isPasswordObscure,
            suffixIcon: IconButton(
              onPressed: () {
                registerCubit.passwordObscureChange();
              },
              icon: Icon(
                registerCubit.isPasswordObscure
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
          SizedBox(
            height: 16.h,
          ),
          CustomTextFormField(
            controller: registerCubit.confirmPasswordController,
            hintText: 'Confirm Password',
            prefixIcon: Icon(
              Icons.password,
              color: AppColor.cadetGrey,
              size: 24.sp,
            ),
            obscureText: registerCubit.isConfirmPasswordObscure,
            suffixIcon: IconButton(
              onPressed: () {
                registerCubit.confirmPasswordObscureChange();
              },
              icon: Icon(
                registerCubit.isConfirmPasswordObscure
                    ? Icons.visibility_off
                    : Icons.visibility,
                size: 24.sp,
                color: AppColor.cadetGrey,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Should enter confirm password";
              }
              if (registerCubit.passwordController.text !=
                  registerCubit.confirmPasswordController.text) {
                return "Confirm password must match password";
              }
            },
          ),
        ],
      ),
    );
  }
}
