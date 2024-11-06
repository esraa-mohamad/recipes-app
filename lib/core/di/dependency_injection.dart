import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:recipes_book_app/core/network/api_services.dart';
import 'package:recipes_book_app/core/network/dio_factory.dart';
import 'package:recipes_book_app/features/home/data/repo/home_repo.dart';
import 'package:recipes_book_app/features/home/presentation/manager/home_cubit.dart';
import 'package:recipes_book_app/features/details/data/repo/details_repo.dart';
import 'package:recipes_book_app/features/details/presentation/manager/details_cubit.dart';
import 'package:recipes_book_app/features/search/data/repo/search_repo.dart';
import 'package:recipes_book_app/features/search/presentation/manager/search_cubit.dart';

final getIt = GetIt.instance;

void setup() {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(apiServices: getIt()));
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));

  // search
  getIt.registerLazySingleton<SearchRepo>(() => SearchRepo(getIt()));
  getIt.registerLazySingleton<SearchCubit>(() => SearchCubit(getIt()));

  // details
  getIt.registerLazySingleton<DetailsRepo>(() => DetailsRepo(getIt()));
  getIt.registerLazySingleton<DetailsCubit>(() => DetailsCubit(getIt()));
}
