import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_type.freezed.dart';
part 'record_type.g.dart';

/// RecordType 实体类 - 表示记录类型信息
@freezed
class RecordType with _$RecordType {
  const factory RecordType({
    /// 主键ID
    int? id,

    /// 分类ID
    int? categoryId,

    /// 记录类型名称
    required String name,

    /// 记录类型描述
    String? description,

    /// 记录类型图标
    String? icon,

    /// 记录类型颜色
    String? color,

    /// 记录类型配置信息
    String? config,

    /// 创建时间
    DateTime? createdAt,

    /// 更新时间
    DateTime? updatedAt,
  }) = _RecordType;

  factory RecordType.fromJson(Map<String, dynamic> json) => _$RecordTypeFromJson(json);
}