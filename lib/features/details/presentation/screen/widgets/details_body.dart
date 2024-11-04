import 'package:flutter/material.dart';
import 'package:recipes_book_app/features/details/presentation/screen/widgets/details_tab_bar.dart';
import 'package:recipes_book_app/features/details/presentation/screen/widgets/meal_details.dart';
import 'package:recipes_book_app/features/details/presentation/screen/widgets/show_youtube_video.dart';


class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DetailsTabBar(),
            ShowYoutubeVideo(),
            SizedBox(
              height: 24,
            ),
            MealDetails(),
          ],
        ),
      ),
    );
  }
}
