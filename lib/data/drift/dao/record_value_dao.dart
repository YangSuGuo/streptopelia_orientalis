import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_values.dart';

part 'record_value_dao.g.dart';

@DriftAccessor(tables: [RecordValues])
class RecordValueDao extends DatabaseAccessor<AppDatabase> with _$RecordValueDaoMixin {
  RecordValueDao(super.db);

  Future<int> insertRecordValue(Insertable<RecordValue> recordValue) {
    return into(recordValues).insert(recordValue);
  }

  Future<List<RecordValue>> getAllRecordValues() {
    return select(recordValues).get();
  }

  Future<RecordValue?> getRecordValueById(int id) {
    return (select(recordValues)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<RecordValue>> getRecordValuesByRecordId(int recordId) {
    return (select(recordValues)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  Future<List<RecordValue>> getRecordValuesByFieldName(int recordId, String fieldName) {
    return (select(recordValues)
          ..where((tbl) => tbl.recordId.equals(recordId) & tbl.fieldName.equals(fieldName)))
        .get();
  }

  Future<int> updateRecordValue(RecordValue entry) {
    return (update(recordValues)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteRecordValue(int id) {
    return (delete(recordValues)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteRecordValuesByRecordId(int recordId) {
    return (delete(recordValues)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }
}