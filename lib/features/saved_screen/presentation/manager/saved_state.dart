import 'package:recipes_book_app/features/home/data/models/food_model.dart';

class SavedState {}

 class SavedInitial extends SavedState {}
 class SavedSuccess extends SavedState {
  final List<FoodData> foodData ;

  SavedSuccess(this.foodData);
 }
class SavedChangeSave extends SavedState {
 final bool isSave ;

  SavedChangeSave(this.isSave);
}