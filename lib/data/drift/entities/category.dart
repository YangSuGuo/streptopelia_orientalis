import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    int? id,
    required String name,
    String? description,
    String? color,
    String? icon,
    @Default(0) int sortOrder,
    DateTime? createdAt,
    @Default(null) DateTime? updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}
