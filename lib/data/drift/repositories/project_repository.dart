import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';

class ProjectRepository {
  final AppDatabase _db;

  ProjectRepository(this._db);

  // 获取所有项目
  Stream<List<ProjectData>> watchAllProjects() {
    return _db.projectDao.watchAllProjects();
  }

  // 根据条件获取项目
  Stream<List<ProjectData>> watchProjects({
    bool? isHidden,
    bool? isArchived,
    int? categoryId,
    bool sortByWeight = true,
    OrderingMode orderingMode = OrderingMode.asc,
  }) {
    return _db.projectDao.watchProjects(
      isHidden: isHidden,
      isArchived: isArchived,
      categoryId: categoryId,
      sortByWeight: sortByWeight,
      orderingMode: orderingMode,
    );
  }

  // 根据ID获取单个项目
  Future<ProjectData?> getProjectById(int id) async {
    return await _db.projectDao.getProjectById(id);
  }

  // 插入新项目
  Future<int> addProject(ProjectCompanion project) async {
    return await _db.projectDao.insertProject(project);
  }

  // 更新项目
  Future<void> updateProject(ProjectData project) async {
    await _db.projectDao.updateProject(project);
  }

  // 删除项目
  Future<void> deleteProject(int id) async {
    await _db.projectDao.deleteProject(id);
  }

  // 删除所有项目
  Future<void> deleteAllProjects() async {
    await _db.projectDao.deleteAllProjects();
  }
}
