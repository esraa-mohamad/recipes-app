import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/features/search/data/repo/search_repo.dart';

import 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  static SearchCubit get(context) => BlocProvider.of(context);
  final TextEditingController nameController = TextEditingController();
  final SearchRepo searchRepo;

  void searchUsingName() async {
    emit(SearchLoading());
    var searchData = await searchRepo.searchUsingName(name: nameController.text);
    searchData.fold(
      (error) {
        emit(SearchFailed(error.toString()));
      },
      (searchModelResponse) {
        emit(SearchSuccess(searchModelResponse));
      },
    );
  }
}
