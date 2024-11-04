import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:recipes_book_app/core/helper/app_images.dart';

final onBoardingModel = [
  PageModel(
    color: Colors.white,
    imageAssetPath: AppImages.onBoarding1,
    titleColor: Colors.black,
    title: 'Discover Your Next Meal',
    bodyColor: Color(0xff9CA3AF),
    body:
        'Explore a variety of recipes from quick snacks to gourmet dishes and find inspiration for every taste and occasion',
    doAnimateImage: true,
  ),
  PageModel(
    color: Colors.white,
    imageAssetPath: AppImages.onBoarding2,
    titleColor: Colors.black,
    title: 'Easy-to-Follow Instructions',
    bodyColor: Color(0xff9CA3AF),
    body:
        'Step-by-step guidance to make cooking enjoyable and stress-free, even for beginners.',
    doAnimateImage: true,
  ),
  PageModel(
    color: Colors.white,
    imageAssetPath: AppImages.onBoarding3,
    titleColor: Colors.black,
    title: 'Thousands of Tested Recipes',
    bodyColor: Color(0xff9CA3AF),
    body:
        'There is no need to fear failure. Tested recipes are guaranteed to work by our professional chefs.',
    doAnimateImage: true,
  ),
];
