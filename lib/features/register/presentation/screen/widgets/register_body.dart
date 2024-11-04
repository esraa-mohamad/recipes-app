import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';
import 'package:recipes_book_app/features/register/presentation/screen/widgets/register_button.dart';
import 'package:recipes_book_app/features/register/presentation/screen/widgets/register_form.dart';

import '../../../../../core/routes/routes.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 25.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Sign Up',
                style: AppTextStyle.font30DarkGreenBold,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Create new account to continue',
                style: AppTextStyle.font14SlateGrayRegular,
              ),
              SizedBox(
                height: 50.h,
              ),
              RegisterForm(),
              SizedBox(
                height: 50.h,
              ),
              RegisterButton(),
              SizedBox(
                height: 50.h,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Already have and account? ',
                      style: AppTextStyle.font14SlateGrayRegular,
                      children: [
                        TextSpan(
                            text: 'Login',
                            style: AppTextStyle.font14OrangeMedium,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context)
                                    .pushNamed(Routes.loginScreen);
                              })
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
