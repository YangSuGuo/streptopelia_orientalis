import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/record_types.dart';

part 'record_type_dao.g.dart';

@DriftAccessor(tables: [RecordTypes])
class RecordTypeDao extends DatabaseAccessor<AppDatabase> with _$RecordTypeDaoMixin {
  RecordTypeDao(super.db);

  // Create
  Future<int> insertRecordType(Insertable<RecordTypesData> recordType) {
    return into(recordTypes).insert(recordType);
  }

  // Read - Get all record types
  Future<List<RecordType>> getAllRecordTypes() {
    return select(recordTypes).get();
  }

  // Read - Get record type by ID
  Future<RecordType?> getRecordTypeById(int id) {
    return (select(recordTypes)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  // Read - Get enabled record types
  Future<List<RecordType>> getEnabledRecordTypes() {
    return (select(recordTypes)..where((tbl) => tbl.isEnabled.equals(true))).get();
  }

  // Update
  Future<int> updateRecordType(RecordType entry) {
    return (update(recordTypes)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  // Delete
  Future<int> deleteRecordType(int id) {
    return (delete(recordTypes)..where((tbl) => tbl.id.equals(id))).go();
  }
}