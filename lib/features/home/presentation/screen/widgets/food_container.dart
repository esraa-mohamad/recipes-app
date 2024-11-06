import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';
import 'package:recipes_book_app/features/home/presentation/manager/home_cubit.dart';
import 'package:recipes_book_app/features/home/presentation/manager/home_state.dart';

class FoodContainer extends StatelessWidget {
  const FoodContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeFoodLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is HomeFoodSuccessState) {
          final food = state.foodModel.foodData;
          log('${food.length}');
          if (food.isEmpty) {
            return const Center(child: Text('No Food available.'));
          }

          return SizedBox(
            height: 400,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: food.length,
              itemBuilder: (context, index) {
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
                      Image.network(
                        food[index].img,
                        fit: BoxFit.fitWidth,
                        height: 250,
                        width: double.infinity,
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    food[index].name,
                                    style: AppTextStyle.font18DarkGreenSemiBold,
                                  ),
                                  Icon(
                                    Icons.bookmark,
                                    size: 20,
                                    color: AppColor.mainOrange,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                        style:
                                            AppTextStyle.font14SlateGrayRegular,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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
                                        style:
                                            AppTextStyle.font14SlateGrayRegular,
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
              },
            ),
          );
        } else if (state is HomeFoodFailureState) {
          return const Center(
            child: Text('Failed to load categories.'),
          );
        }
        return Container();
      },
    );
  }
}
