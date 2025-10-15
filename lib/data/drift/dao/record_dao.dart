import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';
import 'package:streptopelia_orientalis/data/drift/entities/record_entity.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';
import 'package:streptopelia_orientalis/di/drift_provider.dart';

part 'record_dao.g.dart';

@DriftAccessor(tables: [Records])
class RecordDao extends DatabaseAccessor<AppDatabase> with _$RecordDaoMixin {
  RecordDao(super.db);

  Future<int> insertRecord(RecordEntity record) {
    return into(records).insert(
      RecordsCompanion.insert(
        recordTypeId: record.recordTypeId,
        title: record.title,
        content: Value(record.content),
        metadata: Value(record.metadata != null ? jsonEncode(record.metadata) : null),
        categoryId: Value(record.categoryId),
        parentId: Value(record.parentId),
        status: Value(record.status),
        startTime: Value(record.startTime),
        endTime: Value(record.endTime),
      ),
    );
  }

  Future<void> updateRecord(int id, RecordEntity record) {
    return (update(records)..where((tbl) => tbl.id.equals(id))).write(
      RecordsCompanion(
        recordTypeId: Value(record.recordTypeId),
        title: Value(record.title),
        content: Value(record.content),
        metadata: Value(record.metadata != null ? jsonEncode(record.metadata) : null),
        categoryId: Value(record.categoryId),
        parentId: Value(record.parentId),
        status: Value(record.status),
        startTime: Value(record.startTime),
        endTime: Value(record.endTime),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> deleteRecord(int id) {
    return (delete(records)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<List<RecordEntity>> getAllRecords() async {
    final result = await select(records).get();
    return result
        .map(
          (record) => RecordEntity(
            id: record.id,
            recordTypeId: record.recordTypeId,
            title: record.title,
            content: record.content,
            metadata: record.metadata != null && record.metadata!.isNotEmpty
                ? Map.castFrom<dynamic, dynamic, String, dynamic>(jsonDecode(record.metadata!))
                : null,
            categoryId: record.categoryId,
            parentId: record.parentId,
            status: record.status,
            startTime: record.startTime,
            endTime: record.endTime,
            createdAt: record.createdAt,
            updatedAt: record.updatedAt,
          ),
        )
        .toList();
  }

  Future<List<RecordEntity>> getRecordsByType(int recordTypeId) async {
    final result = await (select(records)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).get();
    return result
        .map(
          (record) => RecordEntity(
            id: record.id,
            recordTypeId: record.recordTypeId,
            title: record.title,
            content: record.content,
            metadata: record.metadata != null && record.metadata!.isNotEmpty
                ? Map.castFrom<dynamic, dynamic, String, dynamic>(jsonDecode(record.metadata!))
                : null,
            categoryId: record.categoryId,
            parentId: record.parentId,
            status: record.status,
            startTime: record.startTime,
            endTime: record.endTime,
            createdAt: record.createdAt,
            updatedAt: record.updatedAt,
          ),
        )
        .toList();
  }

  Stream<List<RecordEntity>> watchRecordsByType(int recordTypeId) {
    return (select(records)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).watch().map(
      (records) => records
          .map(
            (record) => RecordEntity(
              id: record.id,
              recordTypeId: record.recordTypeId,
              title: record.title,
              content: record.content,
              metadata: record.metadata != null && record.metadata!.isNotEmpty
                  ? Map.castFrom<dynamic, dynamic, String, dynamic>(jsonDecode(record.metadata!))
                  : null,
              categoryId: record.categoryId,
              parentId: record.parentId,
              status: record.status,
              startTime: record.startTime,
              endTime: record.endTime,
              createdAt: record.createdAt,
              updatedAt: record.updatedAt,
            ),
          )
          .toList(),
    );
  }
}

@riverpod
RecordDao recordDao(Ref ref) {
  final database = ref.read(databaseProvider);
  return RecordDao(database);
}
