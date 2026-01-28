import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/project.dart';

part 'project_dao.g.dart';

@DriftAccessor(tables: [Project])
class ProjectDao extends DatabaseAccessor<AppDatabase> with _$ProjectDaoMixin {
  ProjectDao(super.db);

  Future<List<ProjectData>> getAllProjects() async {
    return await select(db.project).get();
  }

  Future<ProjectData?> getProjectById(int id) async {
    return await (select(db.project)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertProject(Insertable<ProjectData> project) async {
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