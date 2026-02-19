import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
abstract class Project with _$Project {
  const factory Project({
    int? id,
    int? categoryId,
    required String name,
    String? icon,
    String? description,
    String? color,

    @Default(false) bool enableNumericRecord,
    @Default(false) bool enableOptionRecord,
    @Default(false) bool enableStepRecord,
    @Default(false) bool enableLocationRecord,
    @Default(false) bool enableMediaRecord,
    @Default(false) bool enableStartRecord,
    @Default(false) bool enableNotification,

    @Default(false) bool isArchived,
    @Default(false) bool isHidden,

    int? sortWeight,
    DateTime? updatedAt,
    DateTime? createdAt,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
}
