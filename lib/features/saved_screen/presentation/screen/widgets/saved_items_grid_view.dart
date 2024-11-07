import 'package:flutter/material.dart';
import 'package:recipes_book_app/features/home/data/models/food_model.dart';
import 'package:recipes_book_app/features/saved_screen/presentation/screen/widgets/saved_item.dart';


class SavedItemsGridView extends StatelessWidget {
  const SavedItemsGridView({super.key, required this.foodDataList});
final List<FoodData> foodDataList ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          mainAxisExtent: 200
        ),
        itemCount: foodDataList.length,
        itemBuilder: (context, index) {
          return
            SavedItem(foodData: foodDataList[index],);
        },
      ),
    );
  }
}
