
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/features/details/data/repo/details_repo.dart';

import 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this.detailsRepo) : super(DetailsInitial());

  final DetailsRepo detailsRepo ;

  void getAllMealDetails(String id) async{
    var mealData = await detailsRepo.getMealDetails(id);
    mealData.fold((error){
      emit(DetailsFailed(error));

    }, (mealsModelResponse){
      emit(DetailsSuccess(mealsModelResponse));
    });
  }
}
