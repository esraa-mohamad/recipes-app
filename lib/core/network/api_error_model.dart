import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final int? code;
  @JsonKey(name: 'ErrorMessage')
  final String? message;
  @JsonKey(name: 'Error')
  final List ?error;

  ApiErrorModel({required this.message,  this.code , this.error, });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}