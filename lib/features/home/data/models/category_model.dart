import 'package:json_annotation/json_annotation.dart';
part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  @JsonKey(name: 'categories')
  final List<CategoryData> categroyData;

  CategoryModel({
    required this.categroyData,
  });

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@JsonSerializable()
class CategoryData {
  @JsonKey(name: 'idCategory')
  final String id;
  @JsonKey(name: 'strCategoryThumb')
  final String img;
  @JsonKey(name: 'strCategory')
  final String name;
  @JsonKey(name: 'strCategoryDescription')
  final String desc;

  CategoryData({
    required this.id,
    required this.img,
    required this.name,
    required this.desc,
  });

   Map<String, dynamic> toJson() => _$CategoryDataToJson(this);
  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}
