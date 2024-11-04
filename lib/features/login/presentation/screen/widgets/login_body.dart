

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/features/login/presentation/screen/widgets/login_button.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/theme/app_text_style.dart';
import 'login_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

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
                'Sign In',
                style: AppTextStyle.font30DarkGreenBold,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Enter email and password to login',
                style: AppTextStyle.font14SlateGrayRegular,
              ),
              SizedBox(
                height: 100.h,
              ),
              LoginForm(),
              SizedBox(
                height: 80.h,
              ),
              LoginButton(),
              SizedBox(
                height: 80.h,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Don\'t have and account? ',
                      style: AppTextStyle.font14SlateGrayRegular,
                      children: [
                        TextSpan(
                            text: 'Register',
                            style: AppTextStyle.font14OrangeMedium,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context)
                                    .pushReplacementNamed(Routes.registerScreen);
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
