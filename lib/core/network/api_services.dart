import 'package:dio/dio.dart';
import 'package:recipes_book_app/features/search/data/model/search_model_response.dart';
import 'package:retrofit/retrofit.dart';
import 'api_constants.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;

  @GET(ApiConstants.searchUsingName)
  Future<SearchModelResponse> searchUsingName(
    @Query("s") String name,
  );
}
