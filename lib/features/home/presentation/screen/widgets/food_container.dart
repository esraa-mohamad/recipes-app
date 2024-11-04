import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/helper/app_images.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';

class FoodContainer extends StatelessWidget {
  const FoodContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 247, 246, 246),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            fit: BoxFit.fitWidth,
            height: 250,
            width: double.infinity,
            image: AssetImage(
              AppImages.foodImg,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Spiced Fried Chicken',
                    style: AppTextStyle.font18DarkGreenSemiBold,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star_rounded,
                            size: 20,
                            color: AppColor.mainOrange,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '(4.1)',
                            style: AppTextStyle.font14SlateGrayLight,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            size: 20,
                            color: AppColor.slateGray,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '15 min',
                            style: AppTextStyle.font14SlateGrayLight,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
