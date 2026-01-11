import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_values.dart';

part 'record_value_dao.g.dart';

@DriftAccessor(tables: [RecordValues])
class RecordValueDao extends DatabaseAccessor<AppDatabase> with _$RecordValueDaoMixin {
  RecordValueDao(super.db);

  // Create
  Future<int> insertRecordValue(Insertable<RecordValuesData> recordValue) {
    return into(recordValues).insert(recordValue);
  }

  // Read - Get all record values
  Future<List<RecordValue>> getAllRecordValues() {
    return select(recordValues).get();
  }

  // Read - Get record value by ID
  Future<RecordValue?> getRecordValueById(int id) {
    return (select(recordValues)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  // Read - Get record values by record ID
  Future<List<RecordValue>> getRecordValuesByRecordId(int recordId) {
    return (select(recordValues)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  // Read - Get record values by field name
  Future<List<RecordValue>> getRecordValuesByFieldName(int recordId, String fieldName) {
    return (select(recordValues)
          ..where((tbl) => tbl.recordId.equals(recordId) & tbl.fieldName.equals(fieldName)))
        .get();
  }

  // Update
  Future<int> updateRecordValue(RecordValue entry) {
    return (update(recordValues)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  // Delete
  Future<int> deleteRecordValue(int id) {
    return (delete(recordValues)..where((tbl) => tbl.id.equals(id))).go();
  }

  // Delete all record values by record ID
  Future<int> deleteRecordValuesByRecordId(int recordId) {
    return (delete(recordValues)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }
}