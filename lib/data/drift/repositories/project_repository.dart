import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';

import '../../../core/utils/data_converter.dart';
import '../../../di/drift_provider.dart';
import '../entities/project.dart';

part 'project_repository.g.dart';

@riverpod
ProjectRepository projectRepository(Ref ref) {
  final db = ref.watch(databaseProvider);
  return ProjectRepository(db);
}

class ProjectRepository {
  final AppDatabase _db;

  ProjectRepository(this._db);

  // 获取所有项目
  Stream<List<Project>> watchAllProjects() {
    return _db.projectDao.watchAllProjects().map(DataConverter.toProjectEntityList);
  }

  // 根据条件获取项目
  Stream<List<Project>> watchProjects({
    bool? isHidden,
    bool? isArchived,
    int? categoryId,
    bool? sortByWeight,
    OrderingMode orderingMode = OrderingMode.asc,
  }) {
    return _db.projectDao.watchProjects(
      isHidden: isHidden,
      isArchived: isArchived,
      categoryId: categoryId,
      sortByWeight: sortByWeight,
      orderingMode: orderingMode,
        )
        .map(DataConverter.toProjectEntityList);
  }

  // 插入新项目
  Future<int> addProject(Project project) async {
    final companion = DataConverter.createInsertCompanion(project);
    return await _db.projectDao.insertProject(companion);
  }

  // 更新项目
  Future<void> updateProject(Project project) async {
    if (project.id == null) {
      throw ArgumentError('项目ID不能为空');
    }
    final companion = DataConverter.toProjectCompanion(project);
    await _db.projectDao.updateProject(companion);
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
