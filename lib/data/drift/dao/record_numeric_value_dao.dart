import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_numeric_value.dart';

part 'record_numeric_value_dao.g.dart';

@DriftAccessor(tables: [RecordNumericValue])
class RecordNumericValueDao extends DatabaseAccessor<AppDatabase> with _$RecordNumericValueDaoMixin {
  RecordNumericValueDao(super.db);

  Future<int> insertRecordNumericValue(Insertable<RecordNumericValue> recordNumericValue) {
    return into(recordNumericValue).insert(recordNumericValue);
  }

  Future<List<RecordNumericValue>> getAllRecordNumericValues() {
    return select(recordNumericValue).get();
  }

  Future<List<RecordNumericValue>> getRecordNumericValuesByProject(int projectId) {
    return (select(recordNumericValue)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }

  Future<List<RecordNumericValue>> getRecordNumericValuesByRecord(int recordId) {
    return (select(recordNumericValue)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  Future<List<RecordNumericValue>> getRecordNumericValuesByNumericField(int numericFieldId) {
    return (select(recordNumericValue)..where((tbl) => tbl.numericFieldId.equals(numericFieldId))).get();
  }

  Future<RecordNumericValue?> getRecordNumericValueById(int id) {
    return (select(recordNumericValue)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> updateRecordNumericValue(RecordNumericValue entry) {
    return (update(recordNumericValue)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteRecordNumericValue(int id) {
    return (delete(recordNumericValue)..where((tbl) => tbl.id.equals(id))).go();
  }
}