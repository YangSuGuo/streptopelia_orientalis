import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/record_numeric_value.dart';
import '../tables/record_numeric_value.dart' as t;

part 'record_numeric_value_dao.g.dart';

@DriftAccessor(tables: [t.RecordNumericValue])
class RecordNumericValueDao extends DatabaseAccessor<AppDatabase> with _$RecordNumericValueDaoMixin {
  RecordNumericValueDao(AppDatabase db) : super(db);

  Future<List<RecordNumericValue>> getAllRecordNumericValues() async {
    return await select(t.RecordNumericValue).get();
  }

  Future<RecordNumericValue?> getRecordNumericValueById(int id) async {
    return await (select(t.RecordNumericValue)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecordNumericValue(Insertable<RecordNumericValue> recordNumericValue) async {
    return await into(t.RecordNumericValue).insert(recordNumericValue);
  }

  Future<void> updateRecordNumericValue(RecordNumericValue recordNumericValue) async {
    return await (update(t.RecordNumericValue)..where((tbl) => tbl.id.equals(recordNumericValue.id!))).write(recordNumericValue);
  }

  Future<void> deleteRecordNumericValue(int id) async {
    await (delete(t.RecordNumericValue)..where((tbl) => tbl.id.equals(id)));
  }

  Future<void> deleteAllRecordNumericValues() async {
    await delete(t.RecordNumericValue).go();
  }

  Future<List<RecordNumericValue>> getRecordNumericValuesByRecord(int recordId) async {
    return await (select(t.RecordNumericValue)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  Future<List<RecordNumericValue>> getRecordNumericValuesByNumericField(int numericFieldId) async {
    return await (select(t.RecordNumericValue)..where((tbl) => tbl.numericFieldId.equals(numericFieldId))).get();
  }

  Future<List<RecordNumericValue>> getRecordNumericValuesByProject(int projectId) async {
    return await (select(t.RecordNumericValue)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }
}