import 'package:recipes_book_app/features/search/data/model/search_model_response.dart';

class SearchState {}

final class SearchInitial extends SearchState {}
final class SearchLoading extends SearchState {}
final class SearchSuccess extends SearchState {
  final SearchModelResponse searchModelResponse ;

  SearchSuccess(this.searchModelResponse);
}
final class SearchFailed extends SearchState {
  final String error ;

  SearchFailed(this.error);
}
