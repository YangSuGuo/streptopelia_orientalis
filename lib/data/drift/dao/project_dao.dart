import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/di/logger.dart';

import '../app_database.dart';
import '../entities/project.dart';

part 'project_dao.g.dart';

@DriftAccessor(tables: [Project])
class ProjectDao extends DatabaseAccessor<AppDatabase> with _$ProjectDaoMixin {
  ProjectDao(super.db);

  // 获取项目
  Stream<List<ProjectData>> watchProjects({
    bool? isHidden,
    bool? isArchived,
    int? categoryId,
    bool? sortByWeight,
    OrderingMode orderingMode = OrderingMode.asc,
  }) {
    AppLogs().i(
        "ProjectDao: "
            "isHidden: $isHidden; "
            "isArchived: $isArchived; "
            "categoryId: $categoryId; "
            "sortByWeight: $sortByWeight; "
            "orderingMode: $orderingMode; "
    );

    final query = select(db.project);

    if (isHidden != null) query.where((tbl) => tbl.isHidden.equals(isHidden));
    if (isArchived != null) query.where((tbl) => tbl.isArchived.equals(isArchived));
    if (categoryId != null) query.where((tbl) => tbl.categoryId.equals(categoryId));
    if (sortByWeight != null) {
      query.orderBy([(u) => OrderingTerm(expression: db.project.sortWeight, mode: orderingMode)]);
    }

    AppLogs().i("ProjectDao: query: ${ query.toString() }");
    return query.watch();
  }

  // 获取所有项目
  Stream<List<ProjectData>> watchAllProjects() {
    return select(db.project).watch();
  }

  Future<List<ProjectData>> getAllProjects() async {
    return await select(db.project).get();
  }

  Future<ProjectData?> getProjectById(int id) async {
    return await (select(db.project)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertProject(ProjectCompanion project) async {
    return await into(db.project).insert(project);
  }

  Future<void> updateProject(ProjectCompanion project) async {
    await (update(db.project)
      ..where((tbl) => tbl.id.equals(project.id.value))).write(project);
  }

  Future<void> deleteProject(int id) async {
    await (delete(db.project)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllProjects() async {
    await delete(db.project).go();
  }
}