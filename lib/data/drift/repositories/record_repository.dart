import 'package:contribution_heatmap/contribution_heatmap.dart';
import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../di/drift_provider.dart';
import '../../../domain/entity/records.dart';
import '../../../domain/usecases/record_batch.dart';
import '../app_database.dart';
import '../converter/location_record_converter.dart';
import '../converter/media_record_converter.dart';
import '../converter/record_numeric_value_converter.dart';
import '../converter/record_option_selection_converter.dart';
import '../converter/record_step_converter.dart';
import '../converter/records_converter.dart';

part 'record_repository.g.dart';

@riverpod
RecordRepository recordRepository(Ref ref) {
  final db = ref.watch(databaseProvider);
  return RecordRepository(db);
}

class RecordRepository {
  final AppDatabase _db;
  final _recordsConverter = RecordsConverter();
  final _locationConverter = LocationRecordConverter();
  final _mediaConverter = MediaRecordConverter();
  final _numericConverter = RecordNumericValueConverter();
  final _optionConverter = RecordOptionSelectionConverter();
  final _stepConverter = RecordStepConverter();

  RecordRepository(this._db);

  /// 插入完整记录
  Future<int> addCompleteRecord(RecordBatch batch) async {
    return await _db.transaction(() async {
      // 1. 插入主记录（Converter 转换）
      final recordId = await _db.recordsDao.insertRecord(_recordsConverter.createInsertCompanion(batch.record));

      // 2. 插入位置（可选）
      if (batch.location != null) {
        await _db.locationRecordDao.insertLocationRecord(
          _locationConverter.createInsertCompanion(batch.location!).copyWith(recordId: Value(recordId)),
        );
      }

      // 3. 批量插入媒体
      if (batch.mediaList.isNotEmpty) {
        for (final media in batch.mediaList) {
          await _db.mediaRecordDao.insertMediaRecord(
            _mediaConverter.createInsertCompanion(media).copyWith(recordId: Value(recordId)),
          );
        }
      }

      // 4. 批量插入数值
      if (batch.numericValues.isNotEmpty) {
        for (final numeric in batch.numericValues) {
          await _db.recordNumericValueDao.insertRecordNumericValue(
            _numericConverter.createInsertCompanion(numeric).copyWith(recordId: Value(recordId)),
          );
        }
      }

      // 5. 批量插入选项
      if (batch.optionSelections.isNotEmpty) {
        for (final option in batch.optionSelections) {
          await _db.recordOptionSelectionDao.insertRecordOptionSelection(
            _optionConverter.createInsertCompanion(option).copyWith(recordId: Value(recordId)),
          );
        }
      }

      // 6. 批量插入步骤
      if (batch.steps.isNotEmpty) {
        for (final step in batch.steps) {
          await _db.recordStepDao.insertRecordStep(
            _stepConverter.createInsertCompanion(step).copyWith(recordId: Value(recordId)),
          );
        }
      }

      // 7. 批量插入标签关联（直接构造，无 Entity Converter）
      if (batch.tagIds.isNotEmpty) {
        for (final tagId in batch.tagIds.toSet()) {
          await _db.recordTagDao.insertRecordTag(
            RecordTagCompanion(
              projectId: Value(batch.record.projectId),
              recordId: Value(recordId),
              tagId: Value(tagId),
            ),
          );
        }
      }

      return recordId;
    });
  }

  /// 更新完整记录
  Future<void> updateCompleteRecord(RecordBatch batch) async {
    final int recordId = batch.record.id ?? 0;

    await _db.transaction(() async {
      // 1. 更新主记录
      await _db.recordsDao.updateRecord(_recordsConverter.toCompanion(batch.record));

      // 2. 更新位置（可选）
      if (batch.location != null) {
        await _db.locationRecordDao.updateLocationRecordByRecordId(
          _locationConverter.toCompanion(batch.location!).copyWith(recordId: Value(recordId)),
        );
      }

      // 3. 更新媒体列表
      if (batch.mediaList.isNotEmpty) {
        for (final media in batch.mediaList) {
          await _db.mediaRecordDao.updateMediaRecordByRecordId(
            _mediaConverter.toCompanion(media).copyWith(recordId: Value(recordId)),
          );
        }
      }

      // 4. 更新数值列表
      if (batch.numericValues.isNotEmpty) {
        for (final numeric in batch.numericValues) {
          await _db.recordNumericValueDao.updateRecordNumericValueByRecordId(
            _numericConverter.toCompanion(numeric).copyWith(recordId: Value(recordId)),
          );
        }
      }

      // 5. 更新选项列表
      if (batch.optionSelections.isNotEmpty) {
        for (final option in batch.optionSelections) {
          await _db.recordOptionSelectionDao.updateRecordOptionSelectionByRecordId(
            _optionConverter.toCompanion(option).copyWith(recordId: Value(recordId)),
          );
        }
      }

      // 6. 更新步骤列表
      if (batch.steps.isNotEmpty) {
        for (final step in batch.steps) {
          await _db.recordStepDao.updateRecordStepByRecordId(
            _stepConverter.toCompanion(step).copyWith(recordId: Value(recordId)),
          );
        }
      }

      // 7. 更新标签关联
      if (batch.tagIds.isNotEmpty) {
        for (final tagId in batch.tagIds.toSet()) {
          await _db.recordTagDao.updateRecordTagByRecordId(
            RecordTagCompanion(
              projectId: Value(batch.record.projectId),
              recordId: Value(recordId),
              tagId: Value(tagId),
            ),
          );
        }
      }
    });
  }

  // 删除记录及其关联
  Future<void> deleteRecordWithRelations(int recordId) async {
    await _db.transaction(() async {
      await _db.recordTagDao.deleteRecordTag(recordId);
      await _db.recordStepDao.deleteRecordStep(recordId);
      await _db.recordOptionSelectionDao.deleteRecordOptionSelection(recordId);
      await _db.recordNumericValueDao.deleteRecordNumericValue(recordId);
      await _db.mediaRecordDao.deleteMediaRecord(recordId);
      await _db.locationRecordDao.deleteLocationRecord(recordId);
      await _db.recordsDao.deleteRecord(recordId);
    });
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
