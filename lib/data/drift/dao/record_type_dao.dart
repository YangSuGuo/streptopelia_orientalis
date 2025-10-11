import 'dart:convert';
import 'dart:js_interop';

import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';
import 'package:streptopelia_orientalis/data/drift/entities/record_entity.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_types.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';
import 'package:streptopelia_orientalis/di/drift_provider.dart';

part 'record_type_dao.g.dart';

@DriftAccessor(tables: [RecordTypes])
class RecordTypeDao extends DatabaseAccessor<AppDatabase> with _$RecordTypeDaoMixin {
  RecordTypeDao(super.db);

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

  Future<void> deleteRecordType(int id) {
    return (delete(recordTypes)..where((tbl) => tbl.id.equals(id))).go();
  }

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
                ? Map.castFrom<dynamic, dynamic, String, dynamic>(
              jsonDecode(record.config!),
            )
                : null,
            createdAt: record.createdAt,
            updatedAt: record.updatedAt,
          ),
        )
        .toList();
  }

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
          ? Map.castFrom<dynamic, dynamic, String, dynamic>(
        jsonDecode(record.config!),
      )
          : null,
      createdAt: record.createdAt,
      updatedAt: record.updatedAt,
    );
  }

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
                  ? Map.castFrom<dynamic, dynamic, String, dynamic>(
                jsonDecode(record.config!),
              )
                  : null,
              createdAt: record.createdAt,
              updatedAt: record.updatedAt,
            ),
          )
          .toList(),
    );
  }
}

@riverpod
RecordTypeDao recordTypeDao(Ref ref) {
  final database = ref.read(databaseProvider);
  return RecordTypeDao(database);
}
