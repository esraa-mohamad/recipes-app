 import 'package:recipes_book_app/core/network/api_error_model.dart';
import 'package:recipes_book_app/features/details/data/model/meals_model_response.dart';

class DetailsState {}

 class DetailsInitial extends DetailsState {}
 class DetailsLoading extends DetailsState {}
 class DetailsSuccess extends DetailsState {
  final MealsModelResponse mealsModelResponse;

  DetailsSuccess(this.mealsModelResponse);
 }
 class DetailsFailed extends DetailsState {
  final ApiErrorModel apiErrorModel;

  DetailsFailed(this.apiErrorModel);
 }
