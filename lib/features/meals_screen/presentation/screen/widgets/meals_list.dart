import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/core/widgets/custom_image_network.dart';
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
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        mainAxisExtent: 200,
      ),
      delegate: SliverChildBuilderDelegate(
        childCount: isLoading ? 8 : meals?.mealData.length ?? 0,
        (context, index) {
          if (isLoading) {
            return ShimmerWidget(
              widget: Container(
                height: 200.h,
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
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color.fromARGB(255, 234, 234, 234),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageNetwork(
                        imagePath: meals!.mealData[index].img,
                      height: 150.h,
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(height: 10.h),
                    Expanded(
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 8.w),
                        child: Center(
                          child: Text(
                            meals!.mealData[index].name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppTextStyle.font14WhiteSemiBold.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
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
