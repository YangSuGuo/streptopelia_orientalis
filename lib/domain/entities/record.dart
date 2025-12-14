import 'package:freezed_annotation/freezed_annotation.dart';

part 'record.freezed.dart';
part 'record.g.dart';

/// Record 实体类 - 表示记录信息
@freezed
abstract class Record with _$Record {
  const factory Record({
    /// 主键ID
    int? id,

    /// 记录类型ID，关联record_types表
    required int recordTypeId,

    /// 记录标题
    required String title,

    /// 记录内容
    String? content,

    /// 元数据信息，JSON格式存储
    String? metadata,

    /// 分类ID，关联categories表
    int? categoryId,

    /// 父级记录ID，用于建立记录间的层级关系
    int? parentId,

    /// 记录状态，默认为 active 【active, archived, deleted】
    @Default('active') String status,

    /// 开始时间
    DateTime? startTime,

    /// 结束时间
    DateTime? endTime,

    /// 创建时间
    DateTime? createdAt,

    /// 更新时间
    DateTime? updatedAt,
  }) = _Record;

  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
}