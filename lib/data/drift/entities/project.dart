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
    /// 是否启用数值记录功能
    bool? enableNumericRecord,
    /// 是否启用选项记录功能
    bool? enableOptionRecord,
    /// 是否启用分步记录功能
    bool? enableStepRecord,
    /// 是否启用地理位置记录功能
    bool? enableLocationRecord,
    /// 是否启用媒体记录功能
    bool? enableMediaRecord,
    /// 是否启用分步记录功能
    bool? enableStartRecord,
    /// 是否启用通知功能
    bool? enableNotification,
    /// 是否已归档
    bool? isArchived,
    /// 是否已隐藏
    bool? isHidden,
    int? sortWeight,
    DateTime? updatedAt,
    DateTime? createdAt,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
}