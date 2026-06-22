import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:flutter/services.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';
import 'package:streptopelia_orientalis/data/drift/repositories/project_repository.dart';
import 'package:streptopelia_orientalis/domain/entity/numeric_field.dart';
import 'package:streptopelia_orientalis/domain/entity/option_field.dart';
import 'package:streptopelia_orientalis/domain/entity/project.dart';
import 'package:streptopelia_orientalis/domain/entity/step_definition.dart';
import 'package:streptopelia_orientalis/domain/usecases/project_batch.dart';

class DatabaseService {
  final AppDatabase _database;
  final ProjectRepository _projectRepository;

  DatabaseService(this._database, this._projectRepository);

  // 初始化默认记录类型
  Future<void> importItemData() async {
    await _database.transaction(() async {
      final count = await _database.projectDao.getAllProjects();
      if (count.isEmpty) {
        await _database.projectDao.insertProject(
          ProjectCompanion.insert(
            name: '初始测试记录',
            description: const Value('开发测试数据'),
            color: const Value('#FF0084'),
            icon: const Value('🍆'),
            sortWeight: const Value(0),
            createdAt: Value(DateTime.now()),
          ),
        );
      }
    });
  }

  Future<void> importRecordData() async {
    final record = await rootBundle.loadString('assets/json/record.json');
    final List<dynamic> recordData = json.decode(record);

    await _database.transaction(() async {
      // 删除现有数据
      await _database.recordsDao.deleteAllRecords();

      // 批量插入新数据
      for (final recordJson in recordData) {
        final timestamp = recordJson['createdAt'] as int;
        final dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp, isUtc: false).add(Duration(hours: 8));

        final RecordsCompanion recordCompanion = RecordsCompanion.insert(
          projectId: recordJson['projectId'],
          title: recordJson['title'],
          updatedAt: Value(dateTime),
          createdAt: Value(dateTime),
        );

        await _database.into(_database.records).insert(recordCompanion);
      }
    });
  }

  /// 添加完整测试项目（包含数值字段、选项字段、步骤定义）
  Future<void> addTestProject() async {
    final count = await _database.projectDao.getAllProjects();
    if (count.isEmpty) {
      // 创建测试项目
      final testProject = Project(
        name: '健身训练记录',
        description: '用于记录日常健身训练数据',
        color: '#4CAF50',
        icon: '💪',
        enableNumericRecord: true,
        enableOptionRecord: true,
        enableStepRecord: true,
        enableLocationRecord: false,
        enableMediaRecord: true,
        enableStartRecord: true,
        enableNotification: false,
        sortWeight: 0,
        createdAt: DateTime.now(),
      );

      // 创建数值字段（projectId 将在 Repository 中自动设置）
      final numericFields = [
        NumericField(projectId: 0, title: '重量', unit: 'kg'),
        NumericField(projectId: 0, title: '次数', unit: '次'),
        NumericField(projectId: 0, title: '组数', unit: '组'),
      ];

      // 创建选项字段
      final optionFields = [
        OptionField(
          projectId: 0,
          title: '训练强度',
          optionCount: 3,
          maxSelections: 1,
          optionsList: jsonEncode(['低强度', '中强度', '高强度']),
        ),
        OptionField(
          projectId: 0,
          title: '身体状态',
          optionCount: 4,
          maxSelections: 2,
          optionsList: jsonEncode(['良好', '一般', '疲劳', '受伤']),
        ),
      ];

      // 创建步骤定义
      final now = DateTime.now();
      final stepDefinitions = [
        StepDefinition(
          projectId: 0,
          stepNumber: 1,
          title: '热身运动',
          description: '进行5-10分钟的热身活动',
          enableNumericRecord: false,
          enableOptionRecord: false,
          enableMediaRecord: true,
          updatedAt: now,
          createdAt: now,
        ),
        StepDefinition(
          projectId: 0,
          stepNumber: 2,
          title: '主要训练',
          description: '执行计划的训练动作',
          enableNumericRecord: true,
          enableOptionRecord: true,
          enableMediaRecord: true,
          updatedAt: now,
          createdAt: now,
        ),
        StepDefinition(
          projectId: 0,
          stepNumber: 3,
          title: '拉伸放松',
          description: '训练后进行拉伸放松',
          enableNumericRecord: false,
          enableOptionRecord: false,
          enableMediaRecord: false,
          updatedAt: now,
          createdAt: now,
        ),
      ];

      // 使用 ProjectRepository 的 addCompleteProject 方法插入完整项目
      final batch = ProjectBatch(
        project: testProject,
        numericFields: numericFields,
        optionFields: optionFields,
        stepDefinitions: stepDefinitions,
      );

      await _projectRepository.addCompleteProject(batch);
    }
  }

  /// 完整导入
  Future<void> importAllData() async {
    // await importItemData();
    // await importRecordData();
    await addTestProject();
  }
}
