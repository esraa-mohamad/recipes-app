// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodModel _$FoodModelFromJson(Map<String, dynamic> json) => FoodModel(
      foodData: (json['meals'] as List<dynamic>)
          .map((e) => FoodData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FoodModelToJson(FoodModel instance) => <String, dynamic>{
      'meals': instance.foodData,
    };

FoodData _$FoodDataFromJson(Map<String, dynamic> json) => FoodData(
      id: json['idMeal'] as String,
      img: json['strMealThumb'] as String,
      name: json['strMeal'] as String,
    );

Map<String, dynamic> _$FoodDataToJson(FoodData instance) => <String, dynamic>{
      'idMeal': instance.id,
      'strMealThumb': instance.img,
      'strMeal': instance.name,
    };
