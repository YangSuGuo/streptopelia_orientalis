import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/record_types.dart';

part 'record_type_dao.g.dart';

@DriftAccessor(tables: [RecordTypes])
class RecordTypeDao extends DatabaseAccessor<AppDatabase> with _$RecordTypeDaoMixin {
  RecordTypeDao(super.db);

  Future<int> insertRecordType(Insertable<RecordType> recordType) {
    return into(recordTypes).insert(recordType);
  }

  Future<List<RecordType>> getAllRecordTypes() {
    return select(recordTypes).get();
  }

  Future<RecordType?> getRecordTypeById(int id) {
    return (select(recordTypes)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<RecordType>> getEnabledRecordTypes() {
    return (select(recordTypes)..where((tbl) => tbl.isEnabled.equals(true))).get();
  }

  Future<int> updateRecordType(RecordType entry) {
    return (update(recordTypes)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteRecordType(int id) {
    return (delete(recordTypes)..where((tbl) => tbl.id.equals(id))).go();
  }
}