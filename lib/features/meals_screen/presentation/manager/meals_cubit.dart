import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/features/meals_screen/data/repo/meal_repo.dart';
import 'package:recipes_book_app/features/meals_screen/presentation/manager/meals_state.dart';

class MealCubit extends Cubit<MealsState> {
  final MealRepo mealRepo;
  static MealCubit get(context) => BlocProvider.of(context);

  MealCubit(this.mealRepo) : super(MealsInitialState());
  void getAllMeals(String meal) async {
    emit(MealsLoadingState());

    var meals = await mealRepo.getAllMeals(meal);

    meals.fold((error) {
      emit(MealsFailureState(apiErrorModel: error));
    }, (meal) {
      emit(MealsSuccessState(mealModel: meal));
    });
  }
}
