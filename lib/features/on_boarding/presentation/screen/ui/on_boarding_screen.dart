import 'package:flutter/material.dart';
import 'package:recipes_book_app/features/on_boarding/presentation/screen/ui/on_boarding_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingBody(),
    );
  }
}
