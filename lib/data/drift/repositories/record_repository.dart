import 'package:contribution_heatmap/contribution_heatmap.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/data_converter.dart';
import '../../../di/drift_provider.dart';
import '../app_database.dart';

part 'record_repository.g.dart';

@riverpod
RecordRepository recordRepository(Ref ref) {
  final db = ref.watch(databaseProvider);
  return RecordRepository(db);
}

class RecordRepository {
  final AppDatabase _db;

  RecordRepository(this._db);

  // 插入新记录
  Future<int> addRecord(Record record) async {
    final companion = DataConverter.createInsertRecordsCompanion(record);
    return await _db.recordsDao.insertRecord(companion);
  }

  // 更新记录
  Future<void> updateRecord(Record record) async {
    final companion = DataConverter.toRecordCompanion(record);
    await _db.recordsDao.updateRecord(companion);
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
  Future<List<Record>> getRecordsByUpdatedAtRange(DateTime start, DateTime end) async {
    return await _db.recordsDao.getRecordsByUpdatedAtRange(start, end);
  }

  // 根据日期范围查询每日记录数量
  Future<List<ContributionEntry>> getDailyRecordCounts(int projectId, int days) async {
    final DateTime now = DateTime.now();
    final start = DateTime(now.year, now.month, now.day).subtract(Duration(days: days));
    final end = DateTime(now.year, now.month, now.day);
    return await _db.recordsDao.getDailyRecordCounts(projectId, start, end);
  }
}
