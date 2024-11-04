import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/core/helper/app_images.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';

import '../../../../../core/routes/routes.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  _startDelay() {
    Timer(
      const Duration(seconds: 3),
      _goNext,
    );
  }

  _goNext() {
    Navigator.of(context).pushReplacementNamed(Routes.onBoardingScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.mainOrange,
      width: double.infinity,
      child: Center(
          child: Image.asset(
        AppImages.splashLogo,
        width: 85.h,
        height: 85.h,
      )),
    );
  }
}
