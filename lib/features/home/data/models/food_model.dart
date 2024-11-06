import 'package:json_annotation/json_annotation.dart';
part 'food_model.g.dart';

@JsonSerializable()
class FoodModel {
  @JsonKey(name: 'meals')
  final List<FoodData> foodData;

  FoodModel({
    required this.foodData,
  });

  Map<String, dynamic> toJson() => _$FoodModelToJson(this);
  factory FoodModel.fromJson(Map<String, dynamic> json) =>
      _$FoodModelFromJson(json);
}

@JsonSerializable()
class FoodData {
  @JsonKey(name: 'idMeal')
  final String id;
  @JsonKey(name: 'strMealThumb')
  final String img;
  @JsonKey(name: 'strMeal')
  final String name;

  FoodData({
    required this.id,
    required this.img,
    required this.name,
   });

   Map<String, dynamic> toJson() => _$FoodDataToJson(this);
  factory FoodData.fromJson(Map<String, dynamic> json) =>
      _$FoodDataFromJson(json);
}
