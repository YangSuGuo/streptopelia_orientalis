import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_field.freezed.dart';
part 'custom_field.g.dart';

/// CustomField 实体类 - 表示自定义字段信息
@freezed
abstract class CustomField with _$CustomField {
  const factory CustomField({
    /// 主键ID
    int? id,

    /// 关联的记录类型ID
    required int recordTypeId,

    /// 关联的记录ID
    required int recordId,

    /// 字段类型【text, number, date, boolean, select, image】
    required String type,

    /// 字段显示标签（显示名称）
    required String label,

    /// 字段名称
    required String key,

    /// 字段的值
    required String value,

    /// 字段配置信息（选项、验证规则等）
    String? config,

    /// 是否为必填字段
    @Default(false) bool isRequired,

    /// 排序顺序
    @Default(0) int sortOrder,

    /// 创建时间
    DateTime? createdAt,
  }) = _CustomField;

  factory CustomField.fromJson(Map<String, dynamic> json) => _$CustomFieldFromJson(json);
}