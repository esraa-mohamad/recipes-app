import 'package:recipes_book_app/core/network/api_error_model.dart';
import 'package:recipes_book_app/features/home/data/models/area_model.dart';
import 'package:recipes_book_app/features/home/data/models/category_model.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeCategoryLoadingState extends HomeState {}

class HomeCategorySuccessState extends HomeState {
  final CategoryModel categoryModel;

  HomeCategorySuccessState({required this.categoryModel});
}

class HomeCategoryFailureState extends HomeState {
  final ApiErrorModel apiErrorModel;

  HomeCategoryFailureState({required this.apiErrorModel});
}


class HomeAreaLoadingState extends HomeState {}

class HomeAreaSuccessState extends HomeState {
  final AreaModel areaModel;

  HomeAreaSuccessState({required this.areaModel});
}

class HomeAreaFailureState extends HomeState {
  final ApiErrorModel apiErrorModel;

  HomeAreaFailureState({required this.apiErrorModel});
}