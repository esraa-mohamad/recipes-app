import 'package:dio/dio.dart';
import 'package:recipes_book_app/core/network/api_constants.dart';
import 'package:recipes_book_app/features/home/data/models/area_model.dart';
import 'package:recipes_book_app/features/home/data/models/category_model.dart';
import 'package:recipes_book_app/features/home/data/models/food_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:recipes_book_app/features/details/data/model/meals_model_response.dart';
import 'package:recipes_book_app/features/search/data/model/search_model_response.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;

  @GET(ApiConstants.categories)
  Future<CategoryModel> getAllCategories();

  @GET(ApiConstants.areas)
  Future<AreaModel> getAllAreas();

  @GET(ApiConstants.food)
  Future<FoodModel> getAllFood(
    @Query("a") String area,
  );

  @GET(ApiConstants.searchUsingName)
  Future<SearchModelResponse> searchUsingName(
    @Query("s") String name,
  );

  @GET(ApiConstants.detailsUsingId)
  Future<MealsModelResponse> getMealsDetails(
    @Query("i") String id,
  );
}
