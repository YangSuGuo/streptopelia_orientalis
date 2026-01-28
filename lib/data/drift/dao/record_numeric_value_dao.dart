import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/record_numeric_value.dart';

part 'record_numeric_value_dao.g.dart';

@DriftAccessor(tables: [RecordNumericValue])
class RecordNumericValueDao extends DatabaseAccessor<AppDatabase> with _$RecordNumericValueDaoMixin {
  RecordNumericValueDao(super.db);

  Future<List<RecordNumericValueData>> getAllRecordNumericValues() async {
    return await select(db.recordNumericValue).get();
  }

  Future<RecordNumericValueData?> getRecordNumericValueById(int id) async {
    return await (select(db.recordNumericValue)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecordNumericValue(Insertable<RecordNumericValueData> recordNumericValue) async {
    return await into(db.recordNumericValue).insert(recordNumericValue);
  }

  Future<void> updateRecordNumericValue(RecordNumericValueData recordNumericValue) async {
    await (update(db.recordNumericValue)..where((tbl) => tbl.id.equals(recordNumericValue.id))).write(recordNumericValue);
  }

  Future<void> deleteRecordNumericValue(int id) async {
    await (delete(db.recordNumericValue)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllRecordNumericValues() async {
    await delete(db.recordNumericValue).go();
  }
}