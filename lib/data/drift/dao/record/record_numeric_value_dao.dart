import 'package:drift/drift.dart';

import '../../app_database.dart';
import '../../tables/record_numeric_value.dart';

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

  Future<int> insertRecordNumericValue(RecordNumericValueCompanion recordNumericValue) async {
    return await into(db.recordNumericValue).insert(recordNumericValue);
  }

  Future<void> updateRecordNumericValue(RecordNumericValueCompanion recordNumericValue) async {
    await (update(
      db.recordNumericValue,
    )..where((tbl) => tbl.id.equals(recordNumericValue.id.value))).write(recordNumericValue);
  }

  Future<void> updateRecordNumericValueByRecordId(RecordNumericValueCompanion recordNumericValue) async {
    await (update(
      db.recordNumericValue,
    )..where((tbl) => tbl.id.equals(recordNumericValue.recordId.value))).write(recordNumericValue);
  }

  Future<void> deleteRecordNumericValue(int id) async {
    await (delete(db.recordNumericValue)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteRecordNumericValueByRecordId(int id) async {
    await (delete(db.recordNumericValue)..where((tbl) => tbl.recordId.equals(id))).go();
  }

  Future<void> deleteAllRecordNumericValues() async {
    await delete(db.recordNumericValue).go();
  }
}
