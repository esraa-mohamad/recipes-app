import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/widgets/custom_image_network.dart';
import 'package:recipes_book_app/features/home/data/models/food_model.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/theme/app_text_style.dart';

class SavedItem extends StatelessWidget {
  const SavedItem({super.key, required this.foodData});

  final FoodData foodData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Navigator.pushNamed(context, Routes.detailsScreen,
            arguments: foodData.id);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.antiFlashWhite,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              child: CustomImageNetwork(
                imagePath: foodData.img,
                width: double.infinity,
                height: 120,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Center(
                  child: Text(
                    foodData.name,
                    maxLines: 4,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.font14DarkGreenMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
