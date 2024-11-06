import 'package:dio/dio.dart';
import 'package:recipes_book_app/core/network/api_constants.dart';
import 'package:recipes_book_app/features/home/data/models/area_model.dart';
import 'package:recipes_book_app/features/home/data/models/category_model.dart';
import 'package:recipes_book_app/features/home/data/models/food_model.dart';
import 'package:retrofit/retrofit.dart';
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
    @Query("a") String area,);
}
