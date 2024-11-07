import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/features/home/data/repo/home_repo.dart';
import 'package:recipes_book_app/features/home/presentation/manager/area_cubit/area_state.dart';

class AreaCubit extends Cubit<AreaState> {
  final HomeRepo homeRepo;
  static AreaCubit get(context) => BlocProvider.of(context);

  AreaCubit(this.homeRepo) : super(AreaInitialState());
  void getAllAreas() async {
    emit(AreaLoadingState());

    var areas = await homeRepo.getAllArea();

    areas.fold((error) {
      emit(AreaFailureState(apiErrorModel: error));
    }, (area) {
      emit(AreaSuccessState(areaModel: area));
    });
  }
}
