import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/record_numeric_value.dart';

part 'record_numeric_value_dao.g.dart';

@DriftAccessor(tables: [RecordNumericValueTable])
class RecordNumericValueDao extends DatabaseAccessor<AppDatabase> with _$RecordNumericValueDaoMixin {
  RecordNumericValueDao(AppDatabase db) : super(db);

  Future<List<RecordNumericValue>> getAllRecordNumericValues() async {
    final recordNumericValues = await select(recordNumericValueTable).get();
    return recordNumericValues.map((rnv) => RecordNumericValue(
      id: rnv.id,
      projectId: rnv.projectId,
      recordId: rnv.recordId,
      numericFieldId: rnv.numericFieldId,
      value: rnv.value,
    )).toList();
  }

  Future<RecordNumericValue?> getRecordNumericValueById(int id) async {
    final recordNumericValue = await (select(recordNumericValueTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (recordNumericValue == null) return null;
    return RecordNumericValue(
      id: recordNumericValue.id,
      projectId: recordNumericValue.projectId,
      recordId: recordNumericValue.recordId,
      numericFieldId: recordNumericValue.numericFieldId,
      value: recordNumericValue.value,
    );
  }

  Future<int> insertRecordNumericValue(RecordNumericValue recordNumericValue) async {
    return await into(recordNumericValueTable).insert(RecordNumericValueTableCompanion.insert(
      projectId: recordNumericValue.projectId,
      recordId: recordNumericValue.recordId,
      numericFieldId: recordNumericValue.numericFieldId,
      value: recordNumericValue.value,
    ));
  }

  Future<void> updateRecordNumericValue(RecordNumericValue recordNumericValue) async {
    await (update(recordNumericValueTable)..where((tbl) => tbl.id.equals(recordNumericValue.id!))).write(
      RecordNumericValueTableCompanion(
        projectId: Value(recordNumericValue.projectId),
        recordId: Value(recordNumericValue.recordId),
        numericFieldId: Value(recordNumericValue.numericFieldId),
        value: Value(recordNumericValue.value),
      ),
    );
  }

  Future<void> deleteRecordNumericValue(int id) async {
    await (delete(recordNumericValueTable)..where((tbl) => tbl.id.equals(id))).go();
  }
}