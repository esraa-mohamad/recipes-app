// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      message: json['ErrorMessage'] as String?,
      code: (json['code'] as num?)?.toInt(),
      error: json['Error'] as List<dynamic>?,
    );

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'ErrorMessage': instance.message,
      'Error': instance.error,
    };
