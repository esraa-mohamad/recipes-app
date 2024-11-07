
import 'package:recipes_book_app/core/network/api_error_model.dart';
import 'package:recipes_book_app/features/home/data/models/food_model.dart';

class FoodState {}

class FoodInitialState extends FoodState{}

class FoodLoadingState extends FoodState {}

class FoodSuccessState extends FoodState {
  final FoodModel foodModel;

  FoodSuccessState({required this.foodModel});
}

class FoodFailureState extends FoodState {
  final ApiErrorModel apiErrorModel;

  FoodFailureState({required this.apiErrorModel});
}
