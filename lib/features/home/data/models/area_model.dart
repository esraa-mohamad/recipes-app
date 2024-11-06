import 'package:json_annotation/json_annotation.dart';
part 'area_model.g.dart';

@JsonSerializable()
class AreaModel {
  @JsonKey(name: 'meals')
  final List<AreaData> areaData;

  AreaModel({
    required this.areaData,
  });

  Map<String, dynamic> toJson() => _$AreaModelToJson(this);
  factory AreaModel.fromJson(Map<String, dynamic> json) =>
      _$AreaModelFromJson(json);
}

@JsonSerializable()
class AreaData {
  @JsonKey(name: 'strArea')
  final String areaName;

  AreaData({required this.areaName});

  Map<String, dynamic> toJson() => _$AreaDataToJson(this);
  factory AreaData.fromJson(Map<String, dynamic> json) =>
      _$AreaDataFromJson(json);
}
