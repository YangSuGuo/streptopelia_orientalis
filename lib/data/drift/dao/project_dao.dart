import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/project.dart';

part 'project_dao.g.dart';

@DriftAccessor(tables: [Project])
class ProjectDao extends DatabaseAccessor<AppDatabase> with _$ProjectDaoMixin {
  ProjectDao(super.db);

  Future<int> insertProject(Insertable<Project> project) {
    return into(project).insert(project);
  }

  Future<List<Project>> getAllProjects() {
    return select(project).get();
  }

  Future<List<Project>> getProjectsByCategory(int categoryId) {
    return (select(project)..where((tbl) => tbl.categoryId.equals(categoryId))).get();
  }

  Future<Project?> getProjectById(int id) {
    return (select(project)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> updateProject(Project entry) {
    return (update(project)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteProject(int id) {
    return (delete(project)..where((tbl) => tbl.id.equals(id))).go();
  }
}