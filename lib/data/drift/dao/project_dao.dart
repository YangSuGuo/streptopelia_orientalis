import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/project.dart';
import '../tables/project.dart' as t;

part 'project_dao.g.dart';

@DriftAccessor(tables: [t.Project])
class ProjectDao extends DatabaseAccessor<AppDatabase> with _$ProjectDaoMixin {
  ProjectDao(AppDatabase db) : super(db);

  Future<List<Project>> getAllProjects() async {
    return await select(t.Project).get();
  }

  Future<Project?> getProjectById(int id) async {
    return await (select(t.Project)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertProject(Insertable<Project> project) async {
    return await into(t.Project).insert(project);
  }

  Future<void> updateProject(Project project) async {
    return await (update(t.Project)..where((tbl) => tbl.id.equals(project.id!))).write(project);
  }

  Future<void> deleteProject(int id) async {
    await (delete(t.Project)..where((tbl) => tbl.id.equals(id)));
  }

  Future<void> deleteAllProjects() async {
    await delete(t.Project).go();
  }

  Future<List<Project>> getActiveProjects() async {
    return await (select(t.Project)
          ..where((tbl) => tbl.isArchived.equals(false) & tbl.isHidden.equals(false))
          ..orderBy([(u) => OrderingTerm(expression: u.sortWeight)])).get();
  }

  Future<List<Project>> getProjectsByCategory(int categoryId) async {
    return await (select(t.Project)..where((tbl) => tbl.categoryId.equals(categoryId))).get();
  }
}