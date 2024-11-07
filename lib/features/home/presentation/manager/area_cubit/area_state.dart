import 'package:recipes_book_app/core/network/api_error_model.dart';
import 'package:recipes_book_app/features/home/data/models/area_model.dart';
 
abstract class AreaState {}

class AreaInitialState extends AreaState {}

class AreaLoadingState extends AreaState {}

class AreaSuccessState extends AreaState {
  final AreaModel areaModel;

  AreaSuccessState({required this.areaModel});
}

class AreaFailureState extends AreaState {
  final ApiErrorModel apiErrorModel;

  AreaFailureState({required this.apiErrorModel});
}

