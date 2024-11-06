import 'package:dartz/dartz.dart';
import 'package:recipes_book_app/core/network/api_error_handler.dart';
import 'package:recipes_book_app/core/network/api_error_model.dart';
import 'package:recipes_book_app/core/network/api_services.dart';
import 'package:recipes_book_app/features/details/data/model/meals_model_response.dart';

class DetailsRepo{

  final ApiServices _apiServices ;

  DetailsRepo(this._apiServices);

  Future<Either<ApiErrorModel , MealsModelResponse>> getMealDetails(String id) async{
    try {
      var mealsData = await _apiServices.getMealsDetails(id);
      if (mealsData.mealsDetails == null || mealsData.mealsDetails!.isEmpty) {
        return Left(ApiErrorHandler.handle("No meals data for this id"));
      }else {
        return Right(mealsData);

      }
    }  catch (error) {
      return Left(ApiErrorHandler.handle(error.toString()));
    }
  }
}