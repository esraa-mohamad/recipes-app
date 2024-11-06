import 'package:flutter/material.dart';
import 'package:recipes_book_app/features/details/presentation/screen/widgets/details_tab_bar.dart';
import 'package:recipes_book_app/features/details/presentation/screen/widgets/meals_details_data_bloc_builder.dart';


class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DetailsTabBar(),
            MealsDetailsDataBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
