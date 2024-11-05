import 'package:json_annotation/json_annotation.dart';

part 'search_model_response.g.dart';

@JsonSerializable()
class SearchModelResponse {
  @JsonKey(name: 'meals')
  final List<MealsData?>? mealsData;

  SearchModelResponse({required this.mealsData});

  Map<String , dynamic> toJson() => _$SearchModelResponseToJson(this);

  factory SearchModelResponse.fromJson(Map<String, dynamic> json) => _$SearchModelResponseFromJson(json);
}

@JsonSerializable()
class MealsData {
  @JsonKey(name: 'idMeal')
  final String id;

  @JsonKey(name: 'strMeal')
  final String mealName;

  @JsonKey(name: 'strMealThumb')
  final String? mealImage;

  @JsonKey(name: 'strCategory')
  final String? mealCategory;

  @JsonKey(name: 'strArea')
  final String? mealArea;

  MealsData({
    required this.id,
    required this.mealName,
    required this.mealImage,
    required this.mealCategory,
    required this.mealArea,
  });

  Map<String , dynamic> toJson() => _$MealsDataToJson(this);

  factory MealsData.fromJson(Map<String,dynamic> json) =>_$MealsDataFromJson(json);
}
