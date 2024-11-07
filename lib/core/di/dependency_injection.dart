import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:recipes_book_app/core/network/api_services.dart';
import 'package:recipes_book_app/core/network/dio_factory.dart';
import 'package:recipes_book_app/features/home/data/repo/home_repo.dart';
import 'package:recipes_book_app/features/home/presentation/manager/category_cubit/category_cubit.dart';
import 'package:recipes_book_app/features/home/presentation/manager/area_cubit/area_cubit.dart';
import 'package:recipes_book_app/features/details/data/repo/details_repo.dart';
import 'package:recipes_book_app/features/details/presentation/manager/details_cubit.dart';
import 'package:recipes_book_app/features/home/presentation/manager/food_cubit/food_cubit.dart';
import 'package:recipes_book_app/features/meals_screen/data/repo/meal_repo.dart';
import 'package:recipes_book_app/features/meals_screen/presentation/manager/meals_cubit.dart';
import 'package:recipes_book_app/features/saved_screen/presentation/manager/saved_cubit.dart';
import 'package:recipes_book_app/features/search/data/repo/search_repo.dart';
import 'package:recipes_book_app/features/search/presentation/manager/search_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../shared_pref/app_prefs.dart';

final getIt = GetIt.instance;

void setup() async {
  // apps prefs instance
  final sharedPrefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
  getIt.registerLazySingleton<AppPreferences>(() => AppPreferences(getIt()));
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(apiServices: getIt()));

   // category
  getIt.registerLazySingleton<CategoryCubit>(() => CategoryCubit(getIt()));

  // area
  getIt.registerLazySingleton<AreaCubit>(() => AreaCubit(getIt()));

 // food
  getIt.registerLazySingleton<FoodCubit>(() => FoodCubit(getIt()));

  // saved
  getIt.registerLazySingleton<SavedCubit>(() => SavedCubit());


  // search
  getIt.registerLazySingleton<SearchRepo>(() => SearchRepo(getIt()));
  getIt.registerLazySingleton<SearchCubit>(() => SearchCubit(getIt()));



  // details
  getIt.registerLazySingleton<DetailsRepo>(() => DetailsRepo(getIt()));
  getIt.registerFactory<DetailsCubit>(() => DetailsCubit(getIt()));

 // meals
  getIt.registerLazySingleton<MealRepo>(() => MealRepo(getIt()));
  getIt.registerFactory<MealCubit>(() => MealCubit(getIt()));
}
