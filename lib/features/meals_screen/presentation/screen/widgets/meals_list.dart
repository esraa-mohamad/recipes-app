import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/widgets/shimmer_widget.dart';
import 'package:recipes_book_app/core/routes/routes.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';
import 'package:recipes_book_app/features/meals_screen/data/models/meal_model.dart';

class MealsSliverList extends StatelessWidget {
  const MealsSliverList({
    super.key,
    this.meals,
    required this.isLoading,
  });

  final MealModel? meals;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      delegate: SliverChildBuilderDelegate(
        childCount: isLoading ? 8 : meals?.mealData.length ?? 0,
        (context, index) {
          if (isLoading) {
            return ShimmerWidget(
              widget: Container(
                height: 120,
                color: Colors.grey[300],
              ),
            );
          } else {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.detailsScreen,
                    arguments: meals!.mealData[index].id);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 234, 234, 234),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      meals!.mealData[index].img,
                      height: 120,
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        meals!.mealData[index].name,
                        maxLines: 2,
                        style: AppTextStyle.font14WhiteSemiBold.copyWith(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
