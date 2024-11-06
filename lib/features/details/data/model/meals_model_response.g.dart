// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meals_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealsModelResponse _$MealsModelResponseFromJson(Map<String, dynamic> json) =>
    MealsModelResponse(
      mealsDetails: (json['meals'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : MealsDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MealsModelResponseToJson(MealsModelResponse instance) =>
    <String, dynamic>{
      'meals': instance.mealsDetails,
    };

MealsDetails _$MealsDetailsFromJson(Map<String, dynamic> json) => MealsDetails(
      id: json['idMeal'] as String,
      name: json['strMeal'] as String,
      description: json['strInstructions'] as String,
      image: json['strMealThumb'] as String?,
      youtubeLink: json['strYoutube'] as String?,
      category: json['strCategory'] as String?,
      area: json['strArea'] as String?,
      drinkAlternative: json['strDrinkAlternate'] as String?,
      tags: json['strTags'] as String?,
      ingredient1: json['strIngredient1'] as String?,
      ingredient2: json['strIngredient2'] as String?,
      ingredient3: json['strIngredient3'] as String?,
      ingredient4: json['strIngredient4'] as String?,
      ingredient5: json['strIngredient5'] as String?,
      ingredient6: json['strIngredient6'] as String?,
      ingredient7: json['strIngredient7'] as String?,
      ingredient8: json['strIngredient8'] as String?,
      ingredient9: json['strIngredient9'] as String?,
      ingredient10: json['strIngredient10'] as String?,
      ingredient11: json['strIngredient11'] as String?,
      ingredient12: json['strIngredient12'] as String?,
      ingredient13: json['strIngredient13'] as String?,
      ingredient14: json['strIngredient14'] as String?,
      ingredient15: json['strIngredient15'] as String?,
      ingredient16: json['strIngredient16'] as String?,
      ingredient17: json['strIngredient17'] as String?,
      ingredient18: json['strIngredient18'] as String?,
      ingredient19: json['strIngredient19'] as String?,
      ingredient20: json['strIngredient20'] as String?,
      measure1: json['strMeasure1'] as String?,
      measure2: json['strMeasure2'] as String?,
      measure3: json['strMeasure3'] as String?,
      measure4: json['strMeasure4'] as String?,
      measure5: json['strMeasure5'] as String?,
      measure6: json['strMeasure6'] as String?,
      measure7: json['strMeasure7'] as String?,
      measure8: json['strMeasure8'] as String?,
      measure9: json['strMeasure9'] as String?,
      measure10: json['strMeasure10'] as String?,
      measure11: json['strMeasure11'] as String?,
      measure12: json['strMeasure12'] as String?,
      measure13: json['strMeasure13'] as String?,
      measure14: json['strMeasure14'] as String?,
      measure15: json['strMeasure15'] as String?,
      measure16: json['strMeasure16'] as String?,
      measure17: json['strMeasure17'] as String?,
      measure18: json['strMeasure18'] as String?,
      measure19: json['strMeasure19'] as String?,
      measure20: json['strMeasure20'] as String?,
    );

Map<String, dynamic> _$MealsDetailsToJson(MealsDetails instance) =>
    <String, dynamic>{
      'idMeal': instance.id,
      'strMeal': instance.name,
      'strInstructions': instance.description,
      'strMealThumb': instance.image,
      'strYoutube': instance.youtubeLink,
      'strCategory': instance.category,
      'strArea': instance.area,
      'strDrinkAlternate': instance.drinkAlternative,
      'strTags': instance.tags,
      'strIngredient1': instance.ingredient1,
      'strIngredient2': instance.ingredient2,
      'strIngredient3': instance.ingredient3,
      'strIngredient4': instance.ingredient4,
      'strIngredient5': instance.ingredient5,
      'strIngredient6': instance.ingredient6,
      'strIngredient7': instance.ingredient7,
      'strIngredient8': instance.ingredient8,
      'strIngredient9': instance.ingredient9,
      'strIngredient10': instance.ingredient10,
      'strIngredient11': instance.ingredient11,
      'strIngredient12': instance.ingredient12,
      'strIngredient13': instance.ingredient13,
      'strIngredient14': instance.ingredient14,
      'strIngredient15': instance.ingredient15,
      'strIngredient16': instance.ingredient16,
      'strIngredient17': instance.ingredient17,
      'strIngredient18': instance.ingredient18,
      'strIngredient19': instance.ingredient19,
      'strIngredient20': instance.ingredient20,
      'strMeasure1': instance.measure1,
      'strMeasure2': instance.measure2,
      'strMeasure3': instance.measure3,
      'strMeasure4': instance.measure4,
      'strMeasure5': instance.measure5,
      'strMeasure6': instance.measure6,
      'strMeasure7': instance.measure7,
      'strMeasure8': instance.measure8,
      'strMeasure9': instance.measure9,
      'strMeasure10': instance.measure10,
      'strMeasure11': instance.measure11,
      'strMeasure12': instance.measure12,
      'strMeasure13': instance.measure13,
      'strMeasure14': instance.measure14,
      'strMeasure15': instance.measure15,
      'strMeasure16': instance.measure16,
      'strMeasure17': instance.measure17,
      'strMeasure18': instance.measure18,
      'strMeasure19': instance.measure19,
      'strMeasure20': instance.measure20,
    };
