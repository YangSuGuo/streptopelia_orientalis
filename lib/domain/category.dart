import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

/// Category 实体类 - 表示分类信息
@freezed
class Category with _$Category {
  const factory Category({
    /// 分类的唯一标识符
    int? id,

    /// 分类名称
    required String name,

    /// 分类描述
    String? description,

    /// 分类颜色，用于界面显示
    String? color,

    /// 父分类ID，用于构建分类层级结构
    int? parentId,

    /// 排序序号，用于控制分类显示顺序
    @Default(0) int sortOrder,

    /// 创建时间
    DateTime? createdAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}