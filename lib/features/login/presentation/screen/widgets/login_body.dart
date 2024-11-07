import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/features/login/presentation/manager/login_cubit.dart';
import 'package:recipes_book_app/features/login/presentation/manager/login_state.dart';
import 'package:recipes_book_app/features/login/presentation/screen/widgets/login_button.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/shared_pref/app_prefs.dart';
import '../../../../../core/theme/app_text_style.dart';
import '../../../../../core/widgets/error_dialog.dart';
import '../../../../../core/widgets/loading_dialog.dart';
import 'login_form.dart';

class LoginBody extends StatelessWidget {
   LoginBody({super.key});
  final AppPreferences appPreferences = getIt<AppPreferences>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginState>(
      listener: (context, state) {
        if(state is LoginLoading){
          loadingDialog(context);
        }else if(state is LoginSuccess){
          Navigator.of(context).pop();
          final displayName = state.user!.displayName ?? 'Guest';
          log("Name : $displayName");
          appPreferences.setLoginName(displayName);
          Navigator.of(context).pushReplacementNamed(Routes.bottomBar);
        }else if(state is LoginFailed){
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
                                        .pushReplacementNamed(
                                        Routes.registerScreen);
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
