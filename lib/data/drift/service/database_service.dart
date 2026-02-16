import 'dart:convert';

import 'package:drift/src/runtime/data_class.dart';
import 'package:flutter/services.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';

class DatabaseService {
  final AppDatabase _database;

  DatabaseService(this._database);

  // 初始化默认记录类型
  Future<void> importItemData() async {
    await _database.transaction(() async {
      final count = await _database.projectDao.getAllProjects();
      if (count.isEmpty) {
        await _database.projectDao.insertProject(
          ProjectCompanion.insert(
            name: '慰记',
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

  /// 完整导入
  Future<void> importAllData() async {
    await importItemData();
    await importRecordData();
  }
}
