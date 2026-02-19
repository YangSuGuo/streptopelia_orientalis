import 'package:drift/drift.dart';

import '../app_database.dart';
import '../entities/project.dart';
import 'entity_converter.dart';

class ProjectConverter extends EntityConverter<Project, ProjectData> {
  @override
  Project toEntity(ProjectData projectData) {
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

  @override
  ProjectCompanion toCompanion(Project project) {
    return ProjectCompanion(
      id: project.id != null ? Value(project.id!) : const Value.absent(),
      categoryId: project.categoryId != null ? Value(project.categoryId!) : const Value.absent(),
      name: Value(project.name),
      icon: project.icon != null ? Value(project.icon) : const Value.absent(),
      description: project.description != null ? Value(project.description) : const Value.absent(),
      color: project.color != null ? Value(project.color) : const Value.absent(),
      enableNumericRecord: Value(project.enableNumericRecord),
      enableOptionRecord: Value(project.enableOptionRecord),
      enableStepRecord: Value(project.enableStepRecord),
      enableLocationRecord: Value(project.enableLocationRecord),
      enableMediaRecord: Value(project.enableMediaRecord),
      enableStartRecord: Value(project.enableStartRecord),
      enableNotification: Value(project.enableNotification),
      isArchived: Value(project.isArchived),
      isHidden: Value(project.isHidden),
      sortWeight: project.sortWeight != null ? Value(project.sortWeight) : const Value.absent(),
      updatedAt: Value(project.updatedAt ?? DateTime.now()),
      createdAt: project.createdAt != null ? Value(project.createdAt!) : const Value.absent(),
    );
  }

  @override
  ProjectCompanion createInsertCompanion(Project project) {
    return ProjectCompanion.insert(
      categoryId: project.categoryId != null ? Value(project.categoryId!) : const Value.absent(),
      name: project.name,
      icon: project.icon != null ? Value(project.icon) : const Value.absent(),
      description: project.description != null ? Value(project.description) : const Value.absent(),
      color: project.color != null ? Value(project.color) : const Value.absent(),
      enableNumericRecord: Value(project.enableNumericRecord),
      enableOptionRecord: Value(project.enableOptionRecord),
      enableStepRecord: Value(project.enableStepRecord),
      enableLocationRecord: Value(project.enableLocationRecord),
      enableMediaRecord: Value(project.enableMediaRecord),
      enableStartRecord: Value(project.enableStartRecord),
      enableNotification: Value(project.enableNotification),
      isArchived: Value(project.isArchived),
      isHidden: Value(project.isHidden),
      sortWeight: project.sortWeight != null ? Value(project.sortWeight) : const Value.absent(),
      createdAt: project.createdAt != null ? Value(project.createdAt!) : const Value.absent(),
    );
  }
}
