import 'package:flutter/material.dart';
import 'package:recipes_book_app/features/details/data/model/meals_model_response.dart';
import 'package:recipes_book_app/features/details/presentation/screen/widgets/show_youtube_video.dart';

import 'meal_details.dart';

class MealsDetailsListView extends StatelessWidget {
  const MealsDetailsListView({super.key, required this.mealsModelResponse});

  final MealsModelResponse mealsModelResponse;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: mealsModelResponse.mealsDetails!.length,
        itemBuilder: (context , index)
        {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShowYoutubeVideo(mealsDetails: mealsModelResponse.mealsDetails![index],),
              SizedBox(
                height: 24,
              ),
              MealDetails(mealDetails: mealsModelResponse.mealsDetails![index],),
            ],
          );
        }
    );
  }
}
