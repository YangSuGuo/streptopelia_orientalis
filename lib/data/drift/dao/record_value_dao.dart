import 'package:drift/drift.dart';
import '../app_database.dart';

part 'record_value_dao.g.dart';

@DriftAccessor(tables: [RecordValues])
class RecordValueDao extends DatabaseAccessor<AppDatabase> with _$RecordValueDaoMixin {
  RecordValueDao(AppDatabase db) : super(db);

  Future<List<RecordValue>> getAllRecordValues() {
    return select(recordValues).get();
  }

  Future<RecordValue?> getRecordValueById(int id) {
    return (select(recordValues)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecordValue(Insertable<RecordValue> recordValue) {
    return into(recordValues).insert(recordValue);
  }

  Future<void> updateRecordValue(RecordValueUpdates recordValue) {
    return update(recordValues).replace(recordValue);
  }

  Future<void> deleteRecordValue(int id) {
    return (delete(recordValues)..where((tbl) => tbl.id.equals(id))).go();
  }

  // Get record values by record ID
  Future<List<RecordValue>> getRecordValuesByRecordId(int recordId) {
    return (select(recordValues)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  // Get record values by field name
  Future<List<RecordValue>> getRecordValuesByFieldName(String fieldName) {
    return (select(recordValues)..where((tbl) => tbl.fieldName.equals(fieldName))).get();
  }
}