import 'package:drift/drift.dart';
import '../tables/record_option_selection.dart' as t;
import '../entities/record_option_selection.dart';

part 'record_option_selection_dao.g.dart';

@DriftAccessor(tables: [t.RecordOptionSelection])
class RecordOptionSelectionDao extends DatabaseAccessor<t.RecordOptionSelectionDB> with _$RecordOptionSelectionDaoMixin {
  RecordOptionSelectionDao(t.RecordOptionSelectionDB attachedDatabase) : super(attachedDatabase);

  // 插入选项选择记录
  Future<int> insertRecordOptionSelection(RecordOptionSelection data) async {
    return await into(t.recordOptionSelection).insert(
      t.RecordOptionSelectionCompanion.insert(
        projectId: data.projectId,
        recordId: data.recordId,
        optionFieldId: data.optionFieldId,
        selectedOptions: data.selectedOptions,
      ),
    );
  }

  // 根据ID获取选项选择记录
  Future<RecordOptionSelection?> getRecordOptionSelectionById(int id) async {
    final record = await select(t.recordOptionSelection).where((tbl) => tbl.id.equals(id)).getSingleOrNull();
    return record != null ? RecordOptionSelection.fromJson(record.toJson()) : null;
  }

  // 根据记录ID获取选项选择记录
  Future<List<RecordOptionSelection>> getRecordOptionSelectionsByRecordId(int recordId) async {
    final records = await (select(t.recordOptionSelection)..where((tbl) => tbl.recordId.equals(recordId))).get();
    return records.map((record) => RecordOptionSelection.fromJson(record.toJson())).toList();
  }
  
  // 获取指定项目的所有选项选择记录
  Future<List<RecordOptionSelection>> getRecordOptionSelectionsByProjectId(int projectId) async {
    final records = await (select(t.recordOptionSelection)..where((tbl) => tbl.projectId.equals(projectId))).get();
    return records.map((record) => RecordOptionSelection.fromJson(record.toJson())).toList();
  }

  // 获取指定字段ID的选项选择记录
  Future<List<RecordOptionSelection>> getRecordOptionSelectionsByOptionFieldId(int optionFieldId) async {
    final records = await (select(t.recordOptionSelection)..where((tbl) => tbl.optionFieldId.equals(optionFieldId))).get();
    return records.map((record) => RecordOptionSelection.fromJson(record.toJson())).toList();
  }

  // 更新选项选择记录
  Future<int> updateRecordOptionSelection(int id, RecordOptionSelection data) async {
    return await update(t.recordOptionSelection).replace(
      t.RecordOptionSelectionCompanion(
        id: Value(id),
        projectId: Value(data.projectId),
        recordId: Value(data.recordId),
        optionFieldId: Value(data.optionFieldId),
        selectedOptions: Value(data.selectedOptions),
      ),
    );
  }

  // 删除选项选择记录
  Future<int> deleteRecordOptionSelection(int id) async {
    return await delete(t.recordOptionSelection).deleteWhere((tbl) => tbl.id.equals(id));
  }

  // 删除指定项目的全部选项选择记录
  Future<int> deleteAllRecordOptionSelectionsByProjectId(int projectId) async {
    return await delete(t.recordOptionSelection).deleteWhere((tbl) => tbl.projectId.equals(projectId));
  }

  // 删除指定记录的全部选项选择记录
  Future<int> deleteAllRecordOptionSelectionsByRecordId(int recordId) async {
    return await delete(t.recordOptionSelection).deleteWhere((tbl) => tbl.recordId.equals(recordId));
  }

  // 删除指定选项字段的全部选项选择记录
  Future<int> deleteAllRecordOptionSelectionsByOptionFieldId(int optionFieldId) async {
    return await delete(t.recordOptionSelection).deleteWhere((tbl) => tbl.optionFieldId.equals(optionFieldId));
  }
}