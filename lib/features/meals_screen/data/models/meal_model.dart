import 'package:json_annotation/json_annotation.dart';
part 'meal_model.g.dart';

@JsonSerializable()
class MealModel {
  @JsonKey(name: 'meals')
  final List<MealData> mealData;

  MealModel({
    required this.mealData,
  });

  Map<String, dynamic> toJson() => _$MealModelToJson(this);
  factory MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);
}

@JsonSerializable()
class MealData {
  @JsonKey(name: 'idMeal')
  final String id;
  @JsonKey(name: 'strMealThumb')
  final String img;
  @JsonKey(name: 'strMeal')
  final String name;

  MealData({
    required this.id,
    required this.img,
    required this.name,
  });

   Map<String, dynamic> toJson() => _$MealDataToJson(this);
  factory MealData.fromJson(Map<String, dynamic> json) =>
      _$MealDataFromJson(json);
}
