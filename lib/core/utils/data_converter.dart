import 'package:drift/drift.dart';

import '../../data/drift/app_database.dart';
import '../../data/drift/entities/project.dart';

class DataConverter {
  /// 将 ProjectData 转换为 Project 实体
  static Project toProjectEntity(ProjectData projectData) {
    return Project(
      id: projectData.id,
      categoryId: projectData.categoryId,
      name: projectData.name,
      icon: projectData.icon,
      description: projectData.description,
      color: projectData.color,
      enableNumericRecord: projectData.enableNumericRecord,
      enableOptionRecord: projectData.enableOptionRecord,
      enableStepRecord: projectData.enableStepRecord,
      enableLocationRecord: projectData.enableLocationRecord,
      enableMediaRecord: projectData.enableMediaRecord,
      enableStartRecord: projectData.enableStartRecord,
      enableNotification: projectData.enableNotification,
      isArchived: projectData.isArchived,
      isHidden: projectData.isHidden,
      sortWeight: projectData.sortWeight,
      updatedAt: projectData.updatedAt,
      createdAt: projectData.createdAt,
    );
  }

  /// 将 ProjectData 列表转换为 Project 实体列表
  static List<Project> toProjectEntityList(List<ProjectData> projectDataList) {
    return projectDataList.map(toProjectEntity).toList();
  }

  /// 将 Project 实体转换为 ProjectCompanion（用于数据库插入/更新）
  static ProjectCompanion toProjectCompanion(Project project) {
    return ProjectCompanion(
      id: project.id != null ? Value(project.id!) : const Value.absent(),
      categoryId: project.categoryId != null ? Value(project.categoryId!) : const Value.absent(),
      name: Value(project.name),
      icon: project.icon != null ? Value(project.icon) : const Value.absent(),
      description: project.description != null ? Value(project.description) : const Value.absent(),
      color: project.color != null ? Value(project.color) : const Value.absent(),
      enableNumericRecord: Value(project.enableNumericRecord ?? false),
      enableOptionRecord: Value(project.enableOptionRecord ?? false),
      enableStepRecord: Value(project.enableStepRecord ?? false),
      enableLocationRecord: Value(project.enableLocationRecord ?? false),
      enableMediaRecord: Value(project.enableMediaRecord ?? false),
      enableStartRecord: Value(project.enableStartRecord ?? false),
      enableNotification: Value(project.enableNotification ?? false),
      isArchived: Value(project.isArchived ?? false),
      isHidden: Value(project.isHidden ?? false),
      sortWeight: project.sortWeight != null ? Value(project.sortWeight) : const Value.absent(),
      updatedAt: Value(project.updatedAt ?? DateTime.now()),
      createdAt: project.createdAt != null ? Value(project.createdAt!) : const Value.absent(),
    );
  }

  /// 创建用于插入的新项目 Companion
  static ProjectCompanion createInsertCompanion(Project project) {
    return ProjectCompanion.insert(
      categoryId: project.categoryId != null ? Value(project.categoryId!) : const Value.absent(),
      name: project.name,
      icon: project.icon != null ? Value(project.icon) : const Value.absent(),
      description: project.description != null ? Value(project.description) : const Value.absent(),
      color: project.color != null ? Value(project.color) : const Value.absent(),
      enableNumericRecord: Value(project.enableNumericRecord ?? false),
      enableOptionRecord: Value(project.enableOptionRecord ?? false),
      enableStepRecord: Value(project.enableStepRecord ?? false),
      enableLocationRecord: Value(project.enableLocationRecord ?? false),
      enableMediaRecord: Value(project.enableMediaRecord ?? false),
      enableStartRecord: Value(project.enableStartRecord ?? false),
      enableNotification: Value(project.enableNotification ?? false),
      isArchived: Value(project.isArchived ?? false),
      isHidden: Value(project.isHidden ?? false),
      sortWeight: project.sortWeight != null ? Value(project.sortWeight) : const Value.absent(),
      createdAt: project.createdAt != null ? Value(project.createdAt!) : const Value.absent(),
    );
  }
}
