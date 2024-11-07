// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchModelResponse _$SearchModelResponseFromJson(Map<String, dynamic> json) =>
    SearchModelResponse(
      mealsData: (json['meals'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : MealsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchModelResponseToJson(
        SearchModelResponse instance) =>
    <String, dynamic>{
      'meals': instance.mealsData,
    };

MealsData _$MealsDataFromJson(Map<String, dynamic> json) => MealsData(
      id: json['idMeal'] as String,
      mealName: json['strMeal'] as String,
      mealImage: json['strMealThumb'] as String?,
      mealCategory: json['strCategory'] as String?,
      mealArea: json['strArea'] as String?,
    );

Map<String, dynamic> _$MealsDataToJson(MealsData instance) => <String, dynamic>{
      'idMeal': instance.id,
      'strMeal': instance.mealName,
      'strMealThumb': instance.mealImage,
      'strCategory': instance.mealCategory,
      'strArea': instance.mealArea,
    };
