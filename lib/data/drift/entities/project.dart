import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
abstract class Project with _$Project {
  const factory Project({
    int? id,
    required int categoryId,
    required String name,
    String? icon,
    String? description,
    String? colorTheme,
    required bool enableNumericRecord,
    required bool enableOptionRecord,
    required bool enableStepRecord,
    required bool enableLocationRecord,
    required bool enableMediaRecord,
    required bool enableStartRecord,
    required bool enableNotification,
    required bool isArchived,
    required bool isHidden,
    required int sortWeight,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
}