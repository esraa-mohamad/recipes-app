import 'package:json_annotation/json_annotation.dart';
part 'meals_model_response.g.dart';

@JsonSerializable()
class MealsModelResponse {

  @JsonKey(name: "meals")
  final List<MealsDetails?>? mealsDetails ;

  MealsModelResponse({required this.mealsDetails});

  Map<String , dynamic> toJson() => _$MealsModelResponseToJson(this);
  factory MealsModelResponse.fromJson(Map<String,dynamic> json) => _$MealsModelResponseFromJson(json);
}

@JsonSerializable()
class MealsDetails {
  @JsonKey(name: "idMeal")
  final String id;

  @JsonKey(name: "strMeal")
  final String name;

  @JsonKey(name: "strInstructions")
  final String description;

  @JsonKey(name: "strMealThumb")
  final String? image;

  @JsonKey(name: "strYoutube")
  final String? youtubeLink;

  @JsonKey(name: "strCategory")
  final String? category;

  @JsonKey(name: "strArea")
  final String? area;

  @JsonKey(name: "strDrinkAlternate")
  final String? drinkAlternative;

  @JsonKey(name: "strTags")
  final String? tags;

  @JsonKey(name: "strIngredient1")
  final String? ingredient1;

  @JsonKey(name: "strIngredient2")
  final String? ingredient2;

  @JsonKey(name: "strIngredient3")
  final String? ingredient3;

  @JsonKey(name: "strIngredient4")
  final String? ingredient4;

  @JsonKey(name: "strIngredient5")
  final String? ingredient5;

  @JsonKey(name: "strIngredient6")
  final String? ingredient6;

  @JsonKey(name: "strIngredient7")
  final String? ingredient7;

  @JsonKey(name: "strIngredient8")
  final String? ingredient8;

  @JsonKey(name: "strIngredient9")
  final String? ingredient9;

  @JsonKey(name: "strIngredient10")
  final String? ingredient10;

  @JsonKey(name: "strIngredient11")
  final String? ingredient11;

  @JsonKey(name: "strIngredient12")
  final String? ingredient12;

  @JsonKey(name: "strIngredient13")
  final String? ingredient13;

  @JsonKey(name: "strIngredient14")
  final String? ingredient14;

  @JsonKey(name: "strIngredient15")
  final String? ingredient15;

  @JsonKey(name: "strIngredient16")
  final String? ingredient16;

  @JsonKey(name: "strIngredient17")
  final String? ingredient17;

  @JsonKey(name: "strIngredient18")
  final String? ingredient18;

  @JsonKey(name: "strIngredient19")
  final String? ingredient19;

  @JsonKey(name: "strIngredient20")
  final String? ingredient20;

  @JsonKey(name: "strMeasure1")
  final String? measure1;

  @JsonKey(name: "strMeasure2")
  final String? measure2;

  @JsonKey(name: "strMeasure3")
  final String? measure3;

  @JsonKey(name: "strMeasure4")
  final String? measure4;

  @JsonKey(name: "strMeasure5")
  final String? measure5;

  @JsonKey(name: "strMeasure6")
  final String? measure6;

  @JsonKey(name: "strMeasure7")
  final String? measure7;

  @JsonKey(name: "strMeasure8")
  final String? measure8;

  @JsonKey(name: "strMeasure9")
  final String? measure9;

  @JsonKey(name: "strMeasure10")
  final String? measure10;

  @JsonKey(name: "strMeasure11")
  final String? measure11;

  @JsonKey(name: "strMeasure12")
  final String? measure12;

  @JsonKey(name: "strMeasure13")
  final String? measure13;

  @JsonKey(name: "strMeasure14")
  final String? measure14;

  @JsonKey(name: "strMeasure15")
  final String? measure15;

  @JsonKey(name: "strMeasure16")
  final String? measure16;

  @JsonKey(name: "strMeasure17")
  final String? measure17;

  @JsonKey(name: "strMeasure18")
  final String? measure18;

  @JsonKey(name: "strMeasure19")
  final String? measure19;

  @JsonKey(name: "strMeasure20")
  final String? measure20;

  MealsDetails(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.youtubeLink,
      required this.category,
      required this.area,
      required this.drinkAlternative,
      required this.tags,
      required this.ingredient1,
      required this.ingredient2,
      required this.ingredient3,
      required this.ingredient4,
      required this.ingredient5,
      required this.ingredient6,
      required this.ingredient7,
      required this.ingredient8,
      required this.ingredient9,
      required this.ingredient10,
      required this.ingredient11,
      required this.ingredient12,
      required this.ingredient13,
      required this.ingredient14,
      required this.ingredient15,
      required this.ingredient16,
      required this.ingredient17,
      required this.ingredient18,
      required this.ingredient19,
      required this.ingredient20,
      required this.measure1,
      required this.measure2,
      required this.measure3,
      required this.measure4,
      required this.measure5,
      required this.measure6,
      required this.measure7,
      required this.measure8,
      required this.measure9,
      required this.measure10,
      required this.measure11,
      required this.measure12,
      required this.measure13,
      required this.measure14,
      required this.measure15,
      required this.measure16,
      required this.measure17,
      required this.measure18,
      required this.measure19,
      required this.measure20,
      });

  Map<String , dynamic> toJson() => _$MealsDetailsToJson(this);

  factory MealsDetails.fromJson(Map<String,dynamic> json) => _$MealsDetailsFromJson(json);
}
