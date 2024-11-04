import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/widgets/bottom_bar.dart';
import 'package:recipes_book_app/features/on_boarding/data/onboarding_model.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavBar(),
            ),
          );
        },
        finishCallback: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavBar(),
            ),
          );
        },
      ),
    );
  }
}
