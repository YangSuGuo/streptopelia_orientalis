import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/record_option_selection.dart';

part 'record_option_selection_dao.g.dart';

@DriftAccessor(tables: [RecordOptionSelection])
class RecordOptionSelectionDao extends DatabaseAccessor<AppDatabase> with _$RecordOptionSelectionDaoMixin {
  RecordOptionSelectionDao(super.db);

  Future<List<RecordOptionSelectionData>> getAllRecordOptionSelections() async {
    return await select(db.recordOptionSelection).get();
  }

  Future<RecordOptionSelectionData?> getRecordOptionSelectionById(int id) async {
    return await (select(db.recordOptionSelection)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecordOptionSelection(Insertable<RecordOptionSelectionData> recordOptionSelection) async {
    return await into(db.recordOptionSelection).insert(recordOptionSelection);
  }

  Future<void> updateRecordOptionSelection(RecordOptionSelectionData recordOptionSelection) async {
    await (update(db.recordOptionSelection)..where((tbl) => tbl.id.equals(recordOptionSelection.id))).write(recordOptionSelection);
  }

  Future<void> deleteRecordOptionSelection(int id) async {
    await (delete(db.recordOptionSelection)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllRecordOptionSelections() async {
    await delete(db.recordOptionSelection).go();
  }
}