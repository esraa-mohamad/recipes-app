
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/widgets/custom_error_message.dart';
import 'package:recipes_book_app/features/details/presentation/manager/details_cubit.dart';
import 'package:recipes_book_app/features/details/presentation/manager/details_state.dart';
import 'package:recipes_book_app/features/details/presentation/screen/widgets/meals_details_list_view.dart';


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
            return getMealsDetailsData(state.mealsModelResponse);
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

  Widget getMealsDetailsData(mealsModelResponse){
    return MealsDetailsListView(mealsModelResponse: mealsModelResponse);
  }
}
