import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:recipes_book_app/core/network/api_services.dart';
import 'package:recipes_book_app/core/network/dio_factory.dart';
import 'package:recipes_book_app/features/search/data/repo/search_repo.dart';
import 'package:recipes_book_app/features/search/presentation/manager/search_cubit.dart';

final getIt = GetIt.instance;

void setup() {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(()=> ApiServices(dio));


  // search
  getIt.registerLazySingleton<SearchRepo>(()=>SearchRepo(getIt()));
  getIt.registerLazySingleton<SearchCubit>(()=>SearchCubit(getIt()));

}