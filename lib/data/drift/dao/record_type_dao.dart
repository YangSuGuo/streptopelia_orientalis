import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';
import 'package:streptopelia_orientalis/data/drift/entities/record_entity.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_types.dart';
import 'package:streptopelia_orientalis/di/drift_provider.dart';

part 'record_type_dao.g.dart';

/// 记录类型数据访问对象
/// 提供对记录类型表的增删改查操作
@DriftAccessor(tables: [RecordTypes])
class RecordTypeDao extends DatabaseAccessor<AppDatabase> with _$RecordTypeDaoMixin {
  /// 构造函数，接收数据库实例
  RecordTypeDao(super.db);

  /// 插入新的记录类型
  /// 
  /// [recordType] 要插入的记录类型实体
  /// 返回插入记录的ID
  Future<int> insertRecordType(RecordTypeEntity recordType) {
    return into(recordTypes).insert(
      RecordTypesCompanion.insert(
        name: recordType.name,
        description: Value(recordType.description),
        icon: Value(recordType.icon),
        color: Value(recordType.color),
        config: Value(recordType.config != null ? jsonEncode(recordType.config) : null),
      ),
    );
  }

  /// 更新记录类型
  /// 
  /// [id] 要更新的记录类型的ID
  /// [recordType] 包含更新数据的记录类型实体
  Future<void> updateRecordType(int id, RecordTypeEntity recordType) {
    return (update(recordTypes)..where((tbl) => tbl.id.equals(id))).write(
      RecordTypesCompanion(
        name: Value(recordType.name),
        description: Value(recordType.description),
        icon: Value(recordType.icon),
        color: Value(recordType.color),
        config: Value(recordType.config != null ? jsonEncode(recordType.config) : null),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  /// 删除记录类型
  /// 
  /// [id] 要删除的记录类型的ID
  Future<void> deleteRecordType(int id) {
    return (delete(recordTypes)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// 获取所有记录类型
  /// 
  /// 返回包含所有记录类型的列表
  Future<List<RecordTypeEntity>> getAllRecordTypes() async {
    final records = await select(recordTypes).get();
    return records
        .map(
          (record) => RecordTypeEntity(
            id: record.id,
            name: record.name,
            description: record.description,
            icon: record.icon,
            color: record.color,
            config: record.config != null && record.config!.isNotEmpty
                ? Map.castFrom<dynamic, dynamic, String, dynamic>(jsonDecode(record.config!))
                : null,
            createdAt: record.createdAt,
            updatedAt: record.updatedAt,
          ),
        )
        .toList();
  }

  /// 根据ID获取记录类型
  /// 
  /// [id] 记录类型的ID
  /// 返回对应的记录类型实体，如果不存在则返回null
  Future<RecordTypeEntity?> getRecordTypeById(int id) async {
    final record = await (select(recordTypes)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (record == null) return null;

    return RecordTypeEntity(
      id: record.id,
      name: record.name,
      description: record.description,
      icon: record.icon,
      color: record.color,
      config: record.config != null && record.config!.isNotEmpty
          ? Map.castFrom<dynamic, dynamic, String, dynamic>(jsonDecode(record.config!))
          : null,
      createdAt: record.createdAt,
      updatedAt: record.updatedAt,
    );
  }

  /// 监听所有记录类型的变化
  /// 
  /// 返回一个流，当记录类型数据发生变化时会发出新的数据
  Stream<List<RecordTypeEntity>> watchAllRecordTypes() {
    return select(recordTypes).watch().map(
      (records) => records
          .map(
            (record) => RecordTypeEntity(
              id: record.id,
              name: record.name,
              description: record.description,
              icon: record.icon,
              color: record.color,
              config: record.config != null && record.config!.isNotEmpty
                  ? Map.castFrom<dynamic, dynamic, String, dynamic>(jsonDecode(record.config!))
                  : null,
              createdAt: record.createdAt,
              updatedAt: record.updatedAt,
            ),
          )
          .toList(),
    );
  }
}

/// RecordTypeDao的Riverpod提供者
/// 用于在应用中获取RecordTypeDao实例
@riverpod
RecordTypeDao recordTypeDao(Ref ref) {
  final database = ref.read(databaseProvider);
  return RecordTypeDao(database);
}
