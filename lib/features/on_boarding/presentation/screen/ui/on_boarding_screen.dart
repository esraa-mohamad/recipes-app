import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:recipes_book_app/core/shared_pref/app_prefs.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/features/on_boarding/data/onboarding_model.dart';


import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/routes/routes.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final AppPreferences appPreferences = getIt<AppPreferences>();
  @override
  void initState() {
    appPreferences.setOnBoardingScreenViewed();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverBoard(
        buttonColor: AppColor.mainOrange,
        allowScroll: true,
        pages: onBoardingModel,
        showBullets: true,
        activeBulletColor: AppColor.mainOrange,
        inactiveBulletColor: Color(0xff9CA3AF),
        skipCallback: () {
          Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
        },
        finishCallback: () {
          Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
        },
      ),
    );
  }
}
