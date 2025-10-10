import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';
import 'package:streptopelia_orientalis/data/drift/tables/media_files.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_types.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';
import 'package:streptopelia_orientalis/di/drift_provider.dart';

part 'record_dao.g.dart';

@DriftAccessor(tables: [Records, MediaFiles, RecordTypes])
class RecordDao extends DatabaseAccessor<AppDatabase> with _$RecordDaoMixin {
  RecordDao(super.db);

  Future<int> insertRecord(Insertable<RecordsData> record) {
    return into(records).insert(record);
  }

  Future<void> updateRecord(int id, Insertable<RecordsData> record) {
    return (update(records)..where((tbl) => tbl.id.equals(id))).write(record);
  }

  Future<void> deleteRecord(int id) {
    return (delete(records)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<List<RecordsData>> getAllRecords() {
    return select(records).get();
  }

  Future<List<RecordsData>> getRecordsByType(int recordTypeId) {
    return (select(records)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).get();
  }

  Stream<List<RecordsData>> watchRecordsByType(int recordTypeId) {
    return (select(records)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).watch();
  }
}

@riverpod
RecordDao recordDao(Ref ref) {
  final database = ref.watch(databaseProvider);
  return RecordDao(database);
}