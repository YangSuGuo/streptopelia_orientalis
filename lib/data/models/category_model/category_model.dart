import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    int? id,
    @Default('') String name,
    String? description,
    String? color,
    String? icon,
    @Default(0) int sortOrder,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, Object?> json) =>
      _$CategoryModelFromJson(json);
}