import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../di/drift_provider.dart';
import '../../../domain/entity/category.dart';
import '../../../domain/entity/numeric_field.dart';
import '../../../domain/entity/option_field.dart';
import '../../../domain/entity/project.dart';
import '../../../domain/entity/step_definition.dart';
import '../../../domain/entity/tag.dart';
import '../../../domain/usecases/project_batch.dart';
import '../app_database.dart';
import '../converter/category_converter.dart';
import '../converter/numeric_field_converter.dart';
import '../converter/option_field_converter.dart';
import '../converter/project_converter.dart';
import '../converter/step_definition_converter.dart';
import '../converter/tag_converter.dart';

part 'project_repository.g.dart';

@riverpod
ProjectRepository projectRepository(Ref ref) {
  final db = ref.watch(databaseProvider);
  return ProjectRepository(db);
}

class ProjectRepository {
  final AppDatabase _db;
  final _projectConverter = ProjectConverter();
  final _categoryConverter = CategoryConverter();
  final _tagConverter = TagConverter();
  final _numericFieldConverter = NumericFieldConverter();
  final _optionFieldConverter = OptionFieldConverter();
  final _stepDefinitionConverter = StepDefinitionConverter();

  ProjectRepository(this._db);

  //region Project 基础 CRUD

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
  }

  Future<List<Project>> getAllProjects() async {
    final dataList = await _db.projectDao.getAllProjects();
    return _projectConverter.toEntityList(dataList);
  }

  Future<Project?> getProjectById(int id) async {
    final data = await _db.projectDao.getProjectById(id);
    return data != null ? _projectConverter.toEntity(data) : null;
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

  //endregion

  //region Project 关联数据完整操作

  /// 插入完整项目（含数值字段、选项字段、步骤定义）
  Future<int> addCompleteProject(ProjectBatch batch) async {
    return await _db.transaction(() async {
      // 1. 插入主项目
      final projectId = await _db.projectDao.insertProject(_projectConverter.createInsertCompanion(batch.project));

      // 2. 批量插入数值字段
      if (batch.numericFields.isNotEmpty) {
        for (final numeric in batch.numericFields) {
          await _db.numericFieldDao.insertNumericField(
            (_numericFieldConverter.createInsertCompanion(numeric) as NumericFieldCompanion).copyWith(
              projectId: Value(projectId),
            ),
          );
        }
      }

      // 3. 批量插入选项字段
      if (batch.optionFields.isNotEmpty) {
        for (final option in batch.optionFields) {
          await _db.optionFieldDao.insertOptionField(
            _optionFieldConverter.createInsertCompanion(option).copyWith(projectId: Value(projectId)),
          );
        }
      }

      // 4. 批量插入步骤定义
      if (batch.stepDefinitions.isNotEmpty) {
        for (final step in batch.stepDefinitions) {
          await _db.stepDefinitionDao.insertStepDefinition(
            _stepDefinitionConverter.createInsertCompanion(step).copyWith(projectId: Value(projectId)),
          );
        }
      }

      return projectId;
    });
  }

  /// 更新完整项目（含数值字段、选项字段、步骤定义）
  Future<void> updateCompleteProject(ProjectBatch batch) async {
    final projectId = batch.project.id;
    if (projectId == null) {
      throw ArgumentError('项目ID不能为空');
    }

    await _db.transaction(() async {
      // 1. 更新主项目
      await _db.projectDao.updateProject(_projectConverter.toCompanion(batch.project));

      // 2. 更新/插入数值字段
      if (batch.numericFields.isNotEmpty) {
        for (final numeric in batch.numericFields) {
          final companion = (_numericFieldConverter.toCompanion(numeric) as NumericFieldCompanion).copyWith(
            projectId: Value(projectId),
          );
          if (numeric.id != null) {
            await _db.numericFieldDao.updateNumericField(companion);
          } else {
            await _db.numericFieldDao.insertNumericField(
              (_numericFieldConverter.createInsertCompanion(numeric) as NumericFieldCompanion).copyWith(
                projectId: Value(projectId),
              ),
            );
          }
        }
      }

      // 3. 更新/插入选项字段
      if (batch.optionFields.isNotEmpty) {
        for (final option in batch.optionFields) {
          final companion = _optionFieldConverter.toCompanion(option).copyWith(projectId: Value(projectId));
          if (option.id != null) {
            await _db.optionFieldDao.updateOptionField(companion);
          } else {
            await _db.optionFieldDao.insertOptionField(
              _optionFieldConverter.createInsertCompanion(option).copyWith(projectId: Value(projectId)),
            );
          }
        }
      }

      // 4. 更新/插入步骤定义
      if (batch.stepDefinitions.isNotEmpty) {
        for (final step in batch.stepDefinitions) {
          final companion = _stepDefinitionConverter.toCompanion(step).copyWith(projectId: Value(projectId));
          if (step.id != null) {
            await _db.stepDefinitionDao.updateStepDefinition(companion);
          } else {
            await _db.stepDefinitionDao.insertStepDefinition(
              _stepDefinitionConverter.createInsertCompanion(step).copyWith(projectId: Value(projectId)),
            );
          }
        }
      }
    });
  }

  /// 查询完整项目（含数值字段、选项字段、步骤定义）
  Future<ProjectBatch?> getCompleteProjectById(int id) async {
    final projectData = await _db.projectDao.getProjectById(id);
    if (projectData == null) return null;

    final numericDataList = await (_db.select(_db.numericField)..where((tbl) => tbl.projectId.equals(id))).get();
    final optionDataList = await (_db.select(_db.optionField)..where((tbl) => tbl.projectId.equals(id))).get();
    final stepDataList = await (_db.select(_db.stepDefinition)..where((tbl) => tbl.projectId.equals(id))).get();

    return ProjectBatch(
      project: _projectConverter.toEntity(projectData),
      numericFields: _numericFieldConverter.toEntityList(numericDataList),
      optionFields: _optionFieldConverter.toEntityList(optionDataList),
      stepDefinitions: _stepDefinitionConverter.toEntityList(stepDataList),
    );
  }

  /// 删除项目及其关联数据
  /// （关联表已配置级联删除，只需删除主项目即可）
  Future<void> deleteProjectWithRelations(int id) async {
    await _db.transaction(() async {
      await _db.projectDao.deleteProject(id);
    });
  }

  //endregion

  //region Project 关联表查询

  Future<List<NumericField>> getNumericFieldsByProjectId(int projectId) async {
    final dataList = await (_db.select(_db.numericField)..where((tbl) => tbl.projectId.equals(projectId))).get();
    return _numericFieldConverter.toEntityList(dataList);
  }

  Future<List<OptionField>> getOptionFieldsByProjectId(int projectId) async {
    final dataList = await (_db.select(_db.optionField)..where((tbl) => tbl.projectId.equals(projectId))).get();
    return _optionFieldConverter.toEntityList(dataList);
  }

  Future<List<StepDefinition>> getStepDefinitionsByProjectId(int projectId) async {
    final dataList = await (_db.select(_db.stepDefinition)..where((tbl) => tbl.projectId.equals(projectId))).get();
    return _stepDefinitionConverter.toEntityList(dataList);
  }

  //endregion

  //region Category CRUD

  Future<List<Category>> getAllCategories() async {
    final dataList = await _db.categoryDao.getAllCategories();
    return _categoryConverter.toEntityList(dataList);
  }

  Stream<List<Category>> watchAllCategories() {
    return _db.categoryDao.watchAllCategories().map(_categoryConverter.toEntityList);
  }

  Future<Category?> getCategoryById(int id) async {
    final data = await _db.categoryDao.getCategoryById(id);
    return data != null ? _categoryConverter.toEntity(data) : null;
  }

  Future<int> addCategory(Category category) async {
    return await _db.categoryDao.insertCategory(_categoryConverter.createInsertCompanion(category));
  }

  Future<void> updateCategory(Category category) async {
    if (category.id == null) {
      throw ArgumentError('分类ID不能为空');
    }
    await _db.categoryDao.updateCategory(_categoryConverter.toCompanion(category));
  }

  Future<void> deleteCategory(int id) async {
    await _db.categoryDao.deleteCategory(id);
  }

  //endregion

  //region Tag CRUD

  Future<List<Tag>> getAllTags() async {
    final dataList = await _db.tagDao.getAllTags();
    return _tagConverter.toEntityList(dataList);
  }

  Future<Tag?> getTagById(int id) async {
    final data = await _db.tagDao.getTagById(id);
    return data != null ? _tagConverter.toEntity(data) : null;
  }

  Future<int> addTag(Tag tag) async {
    return await _db.tagDao.insertTag(_tagConverter.createInsertCompanion(tag));
  }

  Future<void> updateTag(Tag tag) async {
    if (tag.id == null) {
      throw ArgumentError('标签ID不能为空');
    }
    await _db.tagDao.updateTag(_tagConverter.toCompanion(tag));
  }

  Future<void> deleteTag(int id) async {
    await _db.tagDao.deleteTag(id);
  }

  //endregion
}
