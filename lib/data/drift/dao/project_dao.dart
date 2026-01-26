import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/project.dart';

part 'project_dao.g.dart';

@DriftAccessor(tables: [ProjectTable])
class ProjectDao extends DatabaseAccessor<AppDatabase> with _$ProjectDaoMixin {
  ProjectDao(AppDatabase db) : super(db);

  Future<List<Project>> getAllProjects() async {
    final projects = await select(projectTable).get();
    return projects.map((p) => Project(
      id: p.id,
      categoryId: p.categoryId,
      name: p.name,
      icon: p.icon,
      description: p.description,
      colorTheme: p.colorTheme,
      enableNumericRecord: p.enableNumericRecord,
      enableOptionRecord: p.enableOptionRecord,
      enableStepRecord: p.enableStepRecord,
      enableLocationRecord: p.enableLocationRecord,
      enableMediaRecord: p.enableMediaRecord,
      enableStartRecord: p.enableStartRecord,
      enableNotification: p.enableNotification,
      isArchived: p.isArchived,
      isHidden: p.isHidden,
      sortWeight: p.sortWeight,
      updatedAt: p.updatedAt,
      createdAt: p.createdAt,
    )).toList();
  }

  Future<Project?> getProjectById(int id) async {
    final project = await (select(projectTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (project == null) return null;
    return Project(
      id: project.id,
      categoryId: project.categoryId,
      name: project.name,
      icon: project.icon,
      description: project.description,
      colorTheme: project.colorTheme,
      enableNumericRecord: project.enableNumericRecord,
      enableOptionRecord: project.enableOptionRecord,
      enableStepRecord: project.enableStepRecord,
      enableLocationRecord: project.enableLocationRecord,
      enableMediaRecord: project.enableMediaRecord,
      enableStartRecord: project.enableStartRecord,
      enableNotification: project.enableNotification,
      isArchived: project.isArchived,
      isHidden: project.isHidden,
      sortWeight: project.sortWeight,
      updatedAt: project.updatedAt,
      createdAt: project.createdAt,
    );
  }

  Future<int> insertProject(Project project) async {
    return await into(projectTable).insert(ProjectTableCompanion.insert(
      categoryId: project.categoryId,
      name: project.name,
      icon: project.icon,
      description: project.description,
      colorTheme: project.colorTheme,
      enableNumericRecord: project.enableNumericRecord,
      enableOptionRecord: project.enableOptionRecord,
      enableStepRecord: project.enableStepRecord,
      enableLocationRecord: project.enableLocationRecord,
      enableMediaRecord: project.enableMediaRecord,
      enableStartRecord: project.enableStartRecord,
      enableNotification: project.enableNotification,
      isArchived: project.isArchived,
      isHidden: project.isHidden,
      sortWeight: project.sortWeight,
      updatedAt: project.updatedAt,
      createdAt: project.createdAt,
    ));
  }

  Future<void> updateProject(Project project) async {
    await (update(projectTable)..where((tbl) => tbl.id.equals(project.id!))).write(
      ProjectTableCompanion(
        categoryId: Value(project.categoryId),
        name: Value(project.name),
        icon: Value(project.icon),
        description: Value(project.description),
        colorTheme: Value(project.colorTheme),
        enableNumericRecord: Value(project.enableNumericRecord),
        enableOptionRecord: Value(project.enableOptionRecord),
        enableStepRecord: Value(project.enableStepRecord),
        enableLocationRecord: Value(project.enableLocationRecord),
        enableMediaRecord: Value(project.enableMediaRecord),
        enableStartRecord: Value(project.enableStartRecord),
        enableNotification: Value(project.enableNotification),
        isArchived: Value(project.isArchived),
        isHidden: Value(project.isHidden),
        sortWeight: Value(project.sortWeight),
        updatedAt: Value(project.updatedAt),
        createdAt: Value(project.createdAt),
      ),
    );
  }

  Future<void> deleteProject(int id) async {
    await (delete(projectTable)..where((tbl) => tbl.id.equals(id))).go();
  }
}