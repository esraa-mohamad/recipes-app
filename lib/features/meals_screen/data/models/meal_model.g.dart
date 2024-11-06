// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealModel _$MealModelFromJson(Map<String, dynamic> json) => MealModel(
      mealData: (json['meals'] as List<dynamic>)
          .map((e) => MealData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MealModelToJson(MealModel instance) => <String, dynamic>{
      'meals': instance.mealData,
    };

MealData _$MealDataFromJson(Map<String, dynamic> json) => MealData(
      id: json['idMeal'] as String,
      img: json['strMealThumb'] as String,
      name: json['strMeal'] as String,
    );

Map<String, dynamic> _$MealDataToJson(MealData instance) => <String, dynamic>{
      'idMeal': instance.id,
      'strMealThumb': instance.img,
      'strMeal': instance.name,
    };
