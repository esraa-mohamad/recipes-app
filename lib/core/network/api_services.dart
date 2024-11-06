import 'package:dio/dio.dart';
import 'package:recipes_book_app/features/details/data/model/meals_model_response.dart';
import 'package:recipes_book_app/features/search/data/model/search_model_response.dart';
import 'package:retrofit/retrofit.dart';
import 'api_constants.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;

  @GET(ApiConstants.searchUsingName)
  Future<SearchModelResponse> searchUsingNAME(
    @Query("s") String name,
  );

  @GET(ApiConstants.detailsUsingId)
  Future<MealsModelResponse> getMealsDetails(
    @Query("i") String id,
  );
}
