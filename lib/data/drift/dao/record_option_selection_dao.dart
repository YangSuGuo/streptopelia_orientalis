import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_option_selection.dart';

part 'record_option_selection_dao.g.dart';

@DriftAccessor(tables: [RecordOptionSelection])
class RecordOptionSelectionDao extends DatabaseAccessor<AppDatabase> with _$RecordOptionSelectionDaoMixin {
  RecordOptionSelectionDao(super.db);

  Future<int> insertRecordOptionSelection(Insertable<RecordOptionSelection> recordOptionSelection) {
    return into(recordOptionSelection).insert(recordOptionSelection);
  }

  Future<List<RecordOptionSelection>> getAllRecordOptionSelections() {
    return select(recordOptionSelection).get();
  }

  Future<List<RecordOptionSelection>> getRecordOptionSelectionsByProject(int projectId) {
    return (select(recordOptionSelection)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }

  Future<List<RecordOptionSelection>> getRecordOptionSelectionsByRecord(int recordId) {
    return (select(recordOptionSelection)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  Future<List<RecordOptionSelection>> getRecordOptionSelectionsByOptionField(int optionFieldId) {
    return (select(recordOptionSelection)..where((tbl) => tbl.optionFieldId.equals(optionFieldId))).get();
  }

  Future<RecordOptionSelection?> getRecordOptionSelectionById(int id) {
    return (select(recordOptionSelection)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> updateRecordOptionSelection(RecordOptionSelection entry) {
    return (update(recordOptionSelection)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteRecordOptionSelection(int id) {
    return (delete(recordOptionSelection)..where((tbl) => tbl.id.equals(id))).go();
  }
}