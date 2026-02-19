import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';

import '../../../di/drift_provider.dart';
import '../../../domain/entitie/project.dart';
import '../converter/project_converter.dart';

part 'project_repository.g.dart';

@riverpod
ProjectRepository projectRepository(Ref ref) {
  final db = ref.watch(databaseProvider);
  return ProjectRepository(db);
}

class ProjectRepository {
  final AppDatabase _db;
  final ProjectConverter _projectConverter = ProjectConverter();

  ProjectRepository(this._db);

  // 获取所有项目
  Stream<List<Project>> watchAllProjects() {
    return _db.projectDao.watchAllProjects().map(_projectConverter.toEntityList);
  }

  // 根据条件获取项目
  Stream<List<Project>> watchProjects({
    bool? isHidden,
    bool? isArchived,
    int? categoryId,
    bool? sortByWeight,
    OrderingMode orderingMode = OrderingMode.asc,
  }) {
    return _db.projectDao
        .watchProjects(
          isHidden: isHidden,
          isArchived: isArchived,
          categoryId: categoryId,
          sortByWeight: sortByWeight,
          orderingMode: orderingMode,
        )
        .map(_projectConverter.toEntityList);
    // .map((dataList) => dataList.map(_projectConverter.toEntity).toList());
    // .map(DataConverter.toProjectEntityList);
  }

  // 插入新项目
  Future<int> addProject(Project project) async {
    return await _db.projectDao.insertProject(_projectConverter.createInsertCompanion(project));
  }

  // 更新项目
  Future<void> updateProject(Project project) async {
    if (project.id == null) {
      throw ArgumentError('项目ID不能为空');
    }
    await _db.projectDao.updateProject(_projectConverter.toCompanion(project));
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
