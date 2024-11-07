// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AreaModel _$AreaModelFromJson(Map<String, dynamic> json) => AreaModel(
      areaData: (json['meals'] as List<dynamic>)
          .map((e) => AreaData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AreaModelToJson(AreaModel instance) => <String, dynamic>{
      'meals': instance.areaData,
    };

AreaData _$AreaDataFromJson(Map<String, dynamic> json) => AreaData(
      areaName: json['strArea'] as String,
    );

Map<String, dynamic> _$AreaDataToJson(AreaData instance) => <String, dynamic>{
      'strArea': instance.areaName,
    };
