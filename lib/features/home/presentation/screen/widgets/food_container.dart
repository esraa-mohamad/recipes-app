import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/core/routes/routes.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';
import 'package:recipes_book_app/core/widgets/shimmer_widget.dart';
import 'package:recipes_book_app/features/home/presentation/manager/food_cubit/food_cubit.dart';
import 'package:recipes_book_app/features/home/presentation/manager/food_cubit/food_state.dart';
import 'package:recipes_book_app/features/home/presentation/screen/widgets/icon_change_bloc_consumer.dart';

class FoodContainer extends StatelessWidget {
  const FoodContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodCubit, FoodState>(
      builder: (context, state) {
        if (state is FoodLoadingState) {
          return SizedBox(
            height: 350.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return ShimmerWidget(
                  widget: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    width: 350.w,
                    height: 350.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FoodSuccessState) {
          final food = state.foodModel.foodData;
          log('${food.length}');
          if (food.isEmpty) {
            return const Center(child: Text('No Food available.'));
          }
          return SizedBox(
            height: 350.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: food.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.detailsScreen,
                        arguments: food[index].id);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.all(8.r),
                    width: 350.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 246, 246),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          food[index].img,
                          fit: BoxFit.fitWidth,
                          height: 250.h,
                          width: double.infinity,
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      food[index].name,
                                      maxLines: 2,
                                      style: AppTextStyle
                                          .font16DarkGreenSemiBold
                                          .copyWith(
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  IconChangeBlocConsumer(foodData: food[index])
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FoodFailureState) {
          return const Center(
            child: Text('Failed to load food items.'),
          );
        }
        return Container();
      },
    );
  }
}
