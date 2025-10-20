import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';
import 'package:streptopelia_orientalis/data/drift/entities/record_entity.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';
import 'package:streptopelia_orientalis/di/drift_provider.dart';

part 'record_dao.g.dart';

/// DAO类用于管理记录数据的访问
/// 提供记录的增删改查功能
@DriftAccessor(tables: [Records])
class RecordDao extends DatabaseAccessor<AppDatabase> with _$RecordDaoMixin {
  /// 构造函数，接收数据库实例
  RecordDao(super.db);

  /// 插入新的记录
  /// 
  /// [record] 要插入的记录实体
  /// 返回插入记录的ID
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
        createdAt: Value(record.createdAt ?? DateTime.now()),
      ),
    );
  }

  /// 更新现有记录
  /// 
  /// [id] 要更新的记录ID
  /// [record] 包含更新数据的记录实体
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

  /// 删除记录
  /// 
  /// [id] 要删除的记录ID
  Future<void> deleteRecord(int id) {
    return (delete(records)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// 获取所有记录
  /// 
  /// 返回包含所有记录的列表
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

  /// 根据记录类型获取记录列表
  /// 
  /// [recordTypeId] 记录类型ID
  /// 返回匹配指定类型的记录列表
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

  /// 监听指定类型的记录变化
  /// 
  /// [recordTypeId] 记录类型ID
  /// 返回记录列表的流，当数据变化时会发出新的数据
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

/// Riverpod提供者函数，用于获取RecordDao实例
@riverpod
RecordDao recordDao(Ref ref) {
  final database = ref.read(databaseProvider);
  return RecordDao(database);
}
