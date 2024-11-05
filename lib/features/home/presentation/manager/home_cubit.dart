import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/features/home/data/repo/home_repo.dart';
import 'package:recipes_book_app/features/home/presentation/manager/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  static HomeCubit get(context) => BlocProvider.of(context);

  HomeCubit(this.homeRepo) : super(HomeInitialState());
  void getAllCategories() async {
    emit(HomeCategoryLoadingState());

    var categories = await homeRepo.getAllCategories();

    categories.fold((error) {
      emit(HomeCategoryFailureState(apiErrorModel: error));
    }, (categories) {
      emit(HomeCategorySuccessState(categoryModel: categories));
    });
  }

  void getAllAreas() async {
    emit(HomeAreaLoadingState());

    var areas = await homeRepo.getAllArea();

    areas.fold((error) {
      emit(HomeAreaFailureState(apiErrorModel: error));
    }, (area) {
      emit(HomeAreaSuccessState(areaModel: area));
    });
  }
}
