import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_types.dart';
import 'package:streptopelia_orientalis/di/drift_provider.dart';

part 'record_type_dao.g.dart';

@DriftAccessor(tables: [RecordTypes])
class RecordTypeDao extends DatabaseAccessor<AppDatabase> with _$RecordTypeDaoMixin {
  RecordTypeDao(super.db);

  Future<int> insertRecordType(Insertable<RecordTypesData> recordType) {
    return into(recordTypes).insert(recordType);
  }

  Future<void> updateRecordType(int id, Insertable<RecordTypesData> recordType) {
    return (update(recordTypes)..where((tbl) => tbl.id.equals(id))).write(recordType);
  }

  Future<void> deleteRecordType(int id) {
    return (delete(recordTypes)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<List<RecordTypesData>> getAllRecordTypes() {
    return select(recordTypes).get();
  }

  Future<RecordTypesData?> getRecordTypeById(int id) {
    return (select(recordTypes)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Stream<List<RecordTypesData>> watchAllRecordTypes() {
    return select(recordTypes).watch();
  }
}

@riverpod
RecordTypeDao recordTypeDao(Ref ref) {
  final database = ref.watch(databaseProvider);
  return RecordTypeDao(database);
}