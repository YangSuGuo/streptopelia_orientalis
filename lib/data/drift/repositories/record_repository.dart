import 'package:contribution_heatmap/contribution_heatmap.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../di/drift_provider.dart';
import '../app_database.dart';
import '../converter/records_converter.dart';
import '../entities/records.dart';

part 'record_repository.g.dart';

@riverpod
RecordRepository recordRepository(Ref ref) {
  final db = ref.watch(databaseProvider);
  return RecordRepository(db);
}

class RecordRepository {
  final AppDatabase _db;
  final RecordsConverter _recordsConverter = RecordsConverter();

  RecordRepository(this._db);

  // 插入新记录
  Future<int> addRecord(Records record) async {
    return await _db.recordsDao.insertRecord(_recordsConverter.createInsertCompanion(record));
  }

  // 更新记录
  Future<void> updateRecord(Records record) async {
    await _db.recordsDao.updateRecord(_recordsConverter.toCompanion(record));
  }

  // 删除记录
  Future<void> deleteRecord(int id) async {
    await _db.recordsDao.deleteRecord(id);
  }

  // 删除所有记录
  Future<void> deleteAllRecords() async {
    await _db.recordsDao.deleteAllRecords();
  }

  // 查询指定时间范围内的记录
  Future<List<Records>> getRecordsByUpdatedAtRange(DateTime start, DateTime end) async {
    final recordDataList = await _db.recordsDao.getRecordsByUpdatedAtRange(start, end);
    return _recordsConverter.toEntityList(recordDataList);
  }

  // 根据日期范围查询每日记录数量
  Future<List<ContributionEntry>> getDailyRecordCounts(int projectId, int days) async {
    final DateTime now = DateTime.now();
    final start = DateTime(now.year, now.month, now.day).subtract(Duration(days: days));
    final end = DateTime(now.year, now.month, now.day);
    return await _db.recordsDao.getDailyRecordCounts(projectId, start, end);
  }
}
