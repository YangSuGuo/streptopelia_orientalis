import 'package:drift/drift.dart';

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
    bool sortByWeight = true,
    OrderingMode orderingMode = OrderingMode.asc,
  }) {
    final query = select(db.project);

    // 是否隐藏
    if (isHidden != null) {
      query.where((tbl) => tbl.isHidden.equals(isHidden));
    }

    // 是否归档
    if (isArchived != null) {
      query.where((tbl) => tbl.isArchived.equals(isArchived));
    }

    // 分类筛选
    if (categoryId != null) {
      query.where((tbl) => tbl.categoryId.equals(categoryId));
    }

    // 排序
    if (sortByWeight) {
      query.orderBy([
            (u) =>
            OrderingTerm(
              expression: db.project.sortWeight,
              mode: orderingMode,
            )
      ]);
    }

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

  Future<void> updateProject(ProjectData project) async {
    await (update(db.project)..where((tbl) => tbl.id.equals(project.id))).write(project);
  }

  Future<void> deleteProject(int id) async {
    await (delete(db.project)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllProjects() async {
    await delete(db.project).go();
  }
}