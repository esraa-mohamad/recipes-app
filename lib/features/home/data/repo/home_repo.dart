import 'package:recipes_book_app/core/network/api_error_handler.dart';
import 'package:recipes_book_app/core/network/api_error_model.dart';
import 'package:recipes_book_app/core/network/api_services.dart';
import 'package:recipes_book_app/features/home/data/models/area_model.dart';
import 'package:recipes_book_app/features/home/data/models/category_model.dart';
import 'package:dartz/dartz.dart';
import 'package:recipes_book_app/features/home/data/models/food_model.dart';
 
class HomeRepo {
  final ApiServices apiServices;

  HomeRepo({required this.apiServices});

  Future<Either<ApiErrorModel, CategoryModel>> getAllCategories() async {
    try {
      var response = await apiServices.getAllCategories();
      return Right(response);
    } catch (e) {
      return Left(ApiErrorHandler.handle(e));
    }
  }

  Future<Either<ApiErrorModel, AreaModel>> getAllArea() async {
    try {
      var response = await apiServices.getAllAreas();
      return Right(response);
    } catch (e) {
      return Left(ApiErrorHandler.handle(e));
    }
  }

  Future<Either<ApiErrorModel, FoodModel>> getAllFood(String area) async {
    try {
      var response = await apiServices.getAllFood(area);
      return Right(response);
    } catch (e) {
      return Left(ApiErrorHandler.handle(e));
    }
  }
}
