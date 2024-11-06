import 'package:recipes_book_app/core/network/api_error_handler.dart';
import 'package:recipes_book_app/core/network/api_error_model.dart';
import 'package:recipes_book_app/core/network/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:recipes_book_app/features/search/data/model/search_model_response.dart';

class SearchRepo{

  final ApiServices _apiServices ;

  SearchRepo(this._apiServices);

  Future<Either<ApiErrorModel , SearchModelResponse>> searchUsingName({ required String name}) async{
    try {
      var searchData = await _apiServices.searchUsingName(name);
      if(searchData.mealsData == null){
        return Left(ApiErrorHandler.handle("No Data available for this name"));
      }else{
        return Right(searchData);
      }
    } catch(error){
      return Left(ApiErrorHandler.handle(error.toString()));
    }
  }
}