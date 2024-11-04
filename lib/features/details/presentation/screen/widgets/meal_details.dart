import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/helper/app_images.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';
import 'package:recipes_book_app/core/theme/font_family_helper.dart';


class MealDetails extends StatelessWidget {
  const MealDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24 ,
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Spiced Fried Chicken' ,
            style: AppTextStyle.font18DarkGreenSemiBold
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Seafood' ,
                style: AppTextStyle.font14OrangeMedium,
              ),
              Text(
                'British' ,
                style: AppTextStyle.font14OrangeMedium,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Description' ,
            style: AppTextStyle.font16DarkGreenSemiBold
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Indonesian Fried Chicken or Ayam Goreng, is a delicious and popular dish that showcases the vibrant flavors of Indonesian cuisine.' ,
             style: AppTextStyle.font14SlateGrayLight
             style: AppTextStyle.font14SlateGrayRegular
           ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Ingredients' ,
            style: AppTextStyle.font16DarkGreenSemiBold.copyWith(
              fontFamily: FontFamilyHelper.poppinsFont,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(15, (item){
              return Padding(
                padding: const EdgeInsets.only(
                  bottom: 8
                ),
                child: ingredientsAndMeasure(),
              );
            },),
          ),
        ],
      ),
    );
  }

  Widget ingredientsAndMeasure(){
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Image.asset(
            AppImages.dotePoint ,
            width: 5,
            height: 5,
          ),
          SizedBox(
            width: 8,
          ),
          RichText(
            text: TextSpan(
                text:  'Egg noodles  :  ' ,
                 style: AppTextStyle.font14SlateGrayLight,
                  style: AppTextStyle.font14SlateGrayRegular,
                 children:[
                  TextSpan(
                    text:  '  300 gram' ,
                    style: AppTextStyle.font14OrangeMedium,
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }

}
