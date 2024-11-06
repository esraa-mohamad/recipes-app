import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';
import 'package:recipes_book_app/features/home/presentation/screen/widgets/categories_tabbar.dart';
import 'package:recipes_book_app/features/home/presentation/screen/widgets/category_item.dart';
import 'package:recipes_book_app/features/home/presentation/screen/widgets/food_container.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What\'s in your fridge?',
          style: AppTextStyle.font18DarkGreenSemiBold,
        ),
        SizedBox(
          height: 15,
        ),
        CategoryItem(),
        // CategoryTabbar(),
        // FoodContainer(),
      ],
    );
  }
}
