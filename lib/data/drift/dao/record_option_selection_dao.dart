import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/record_option_selection.dart';

part 'record_option_selection_dao.g.dart';

@DriftAccessor(tables: [RecordOptionSelectionTable])
class RecordOptionSelectionDao extends DatabaseAccessor<AppDatabase> with _$RecordOptionSelectionDaoMixin {
  RecordOptionSelectionDao(AppDatabase db) : super(db);

  Future<List<RecordOptionSelection>> getAllRecordOptionSelections() async {
    final recordOptionSelections = await select(recordOptionSelectionTable).get();
    return recordOptionSelections.map((ros) => RecordOptionSelection(
      id: ros.id,
      projectId: ros.projectId,
      recordId: ros.recordId,
      optionFieldId: ros.optionFieldId,
      selectedOptions: ros.selectedOptions,
    )).toList();
  }

  Future<RecordOptionSelection?> getRecordOptionSelectionById(int id) async {
    final recordOptionSelection = await (select(recordOptionSelectionTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (recordOptionSelection == null) return null;
    return RecordOptionSelection(
      id: recordOptionSelection.id,
      projectId: recordOptionSelection.projectId,
      recordId: recordOptionSelection.recordId,
      optionFieldId: recordOptionSelection.optionFieldId,
      selectedOptions: recordOptionSelection.selectedOptions,
    );
  }

  Future<int> insertRecordOptionSelection(RecordOptionSelection recordOptionSelection) async {
    return await into(recordOptionSelectionTable).insert(RecordOptionSelectionTableCompanion.insert(
      projectId: recordOptionSelection.projectId,
      recordId: recordOptionSelection.recordId,
      optionFieldId: recordOptionSelection.optionFieldId,
      selectedOptions: recordOptionSelection.selectedOptions,
    ));
  }

  Future<void> updateRecordOptionSelection(RecordOptionSelection recordOptionSelection) async {
    await (update(recordOptionSelectionTable)..where((tbl) => tbl.id.equals(recordOptionSelection.id!))).write(
      RecordOptionSelectionTableCompanion(
        projectId: Value(recordOptionSelection.projectId),
        recordId: Value(recordOptionSelection.recordId),
        optionFieldId: Value(recordOptionSelection.optionFieldId),
        selectedOptions: Value(recordOptionSelection.selectedOptions),
      ),
    );
  }

  Future<void> deleteRecordOptionSelection(int id) async {
    await (delete(recordOptionSelectionTable)..where((tbl) => tbl.id.equals(id))).go();
  }
}