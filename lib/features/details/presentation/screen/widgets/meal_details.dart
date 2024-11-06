import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';
import 'package:recipes_book_app/core/theme/font_family_helper.dart';

import '../../../../../core/helper/app_images.dart';
import '../../../data/model/meals_model_response.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({super.key, required this.mealDetails});

  final MealsDetails mealDetails;

  @override
  Widget build(BuildContext context) {
    List<Map> ingredientsAndMeasureList = [
      {
        'ingredient': mealDetails.ingredient1,
        'measure': mealDetails.measure1,
      },
      {
        'ingredient': mealDetails.ingredient2,
        'measure': mealDetails.measure2,
      },
      {
        'ingredient': mealDetails.ingredient3,
        'measure': mealDetails.measure3,
      },
      {
        'ingredient': mealDetails.ingredient4,
        'measure': mealDetails.measure4,
      },
      {
        'ingredient': mealDetails.ingredient5,
        'measure': mealDetails.measure5,
      },
      {
        'ingredient': mealDetails.ingredient6,
        'measure': mealDetails.measure6,
      },
      {
        'ingredient': mealDetails.ingredient7,
        'measure': mealDetails.measure7,
      },
      {
        'ingredient': mealDetails.ingredient8,
        'measure': mealDetails.measure8,
      },
      {
        'ingredient': mealDetails.ingredient9,
        'measure': mealDetails.measure9,
      },
      {
        'ingredient': mealDetails.ingredient10,
        'measure': mealDetails.measure10,
      },
      {
        'ingredient': mealDetails.ingredient11,
        'measure': mealDetails.measure11,
      },
      {
        'ingredient': mealDetails.ingredient12,
        'measure': mealDetails.measure12,
      },
      {
        'ingredient': mealDetails.ingredient13,
        'measure': mealDetails.measure13,
      },
      {
        'ingredient': mealDetails.ingredient14,
        'measure': mealDetails.measure14,
      },
      {
        'ingredient': mealDetails.ingredient15,
        'measure': mealDetails.measure15,
      },
      {
        'ingredient': mealDetails.ingredient16,
        'measure': mealDetails.measure16,
      },
      {
        'ingredient': mealDetails.ingredient17,
        'measure': mealDetails.measure17,
      },
      {
        'ingredient': mealDetails.ingredient18,
        'measure': mealDetails.measure18,
      },
      {
        'ingredient': mealDetails.ingredient19,
        'measure': mealDetails.measure19,
      },
      {
        'ingredient': mealDetails.ingredient20,
        'measure': mealDetails.measure20,
      },
    ].where((item) =>
    item['ingredient'] != null &&
        item['ingredient'].toString().isNotEmpty &&
        item['measure'] != null &&
        item['measure'].toString().isNotEmpty).toList();
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(mealDetails.name, style: AppTextStyle.font18DarkGreenSemiBold),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                mealDetails.category ?? '',
                style: AppTextStyle.font14OrangeMedium,
              ),
              Text(
                mealDetails.area ?? '',
                style: AppTextStyle.font14OrangeMedium,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text('Description', style: AppTextStyle.font16DarkGreenSemiBold),
          SizedBox(
            height: 16,
          ),
          Text(mealDetails.description,
              style: AppTextStyle.font14SlateGrayRegular),
          SizedBox(
            height: 20,
          ),
          Text(
            'Ingredients and Amount',
            style: AppTextStyle.font16DarkGreenSemiBold.copyWith(
              fontFamily: FontFamilyHelper.poppinsFont,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              ingredientsAndMeasureList.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ingredientsAndMeasure(
                    ingredients: ingredientsAndMeasureList[index]['ingredient'],
                    measure: ingredientsAndMeasureList[index]['measure'],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget ingredientsAndMeasure(
      {required String ingredients, required String measure}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Image.asset(
            AppImages.dotePoint ,
            width: 5,
            height: 5,
          ),          SizedBox(
            width: 8,
          ),
          RichText(
            text: TextSpan(
                text: '$ingredients :  ',
                style: AppTextStyle.font14SlateGrayRegular,
                children: [
                  TextSpan(
                    text: '  $measure',
                    style: AppTextStyle.font14OrangeMedium,
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
