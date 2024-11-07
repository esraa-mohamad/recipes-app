import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';
import 'package:recipes_book_app/core/widgets/error_dialog.dart';
import 'package:recipes_book_app/core/widgets/loading_dialog.dart';
import 'package:recipes_book_app/features/register/presentation/manager/register_cubit.dart';
import 'package:recipes_book_app/features/register/presentation/manager/register_state.dart';
import 'package:recipes_book_app/features/register/presentation/screen/widgets/register_button.dart';
import 'package:recipes_book_app/features/register/presentation/screen/widgets/register_form.dart';

import '../../../../../core/routes/routes.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
          loadingDialog(context);
        } else if (state is RegisterSuccess) {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
        } else if (state is RegisterFailed) {
          Navigator.of(context).pop();
          errorDialog(context, state.message);
        }
      },
      builder: (context, state) {
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
                    height: 50.h,
                  ),
                  Text(
                    'Sign Up',
                    style: AppTextStyle.font30DarkGreenBold,
                  ),
                  SizedBox(
                    height: 12.h,
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
                                    Navigator.of(context).pushReplacementNamed(
                                        Routes.loginScreen);
                                  })
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
