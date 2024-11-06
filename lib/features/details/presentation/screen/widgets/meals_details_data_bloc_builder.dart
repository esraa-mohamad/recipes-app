import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/widgets/custom_error_message.dart';
import 'package:recipes_book_app/features/details/presentation/manager/details_cubit.dart';
import 'package:recipes_book_app/features/details/presentation/manager/details_state.dart';
import 'package:recipes_book_app/features/details/presentation/screen/widgets/show_youtube_video.dart';

import 'meal_details.dart';

class MealsDetailsDataBlocBuilder extends StatelessWidget {
  const MealsDetailsDataBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit , DetailsState>(
        builder: (context , state){
          if(state is DetailsLoading){
            return Center(
              child: CircularProgressIndicator(color: AppColor.mainOrange,),
            );
          }else if(state is DetailsSuccess){
            return getMealsDetailsData(state.mealsModelResponse.mealsDetails![0]);
          }else if(state is DetailsFailed){
            return Center(child: CustomMessage(error: state.apiErrorModel.message.toString()));
          }else{
            return Center(
              child: CircularProgressIndicator(color: AppColor.mainOrange,),
            );
          }
        }
    );
  }

  Widget getMealsDetailsData(mealsDetails){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShowYoutubeVideo(mealsDetails: mealsDetails,),
        SizedBox(
          height: 24,
        ),
        MealDetails(mealDetails: mealsDetails,),
      ],
    );
  }
}
