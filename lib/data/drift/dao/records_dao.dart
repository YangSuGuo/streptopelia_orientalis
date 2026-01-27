import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/records.dart';
import '../tables/records.dart' as t;

part 'records_dao.g.dart';

@DriftAccessor(tables: [t.Records])
class RecordsDao extends DatabaseAccessor<AppDatabase> with _$RecordsDaoMixin {
  RecordsDao(AppDatabase db) : super(db);

  Future<List<Records>> getAllRecords() async {
    return await select(t.Records).get();
  }

  Future<Records?> getRecordById(int id) async {
    return await (select(t.Records)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecord(Insertable<Records> record) async {
    return await into(t.Records).insert(record);
  }

  Future<void> updateRecord(Records record) async {
    return await (update(t.Records)..where((tbl) => tbl.id.equals(record.id!))).write(record);
  }

  Future<void> deleteRecord(int id) async {
    await (delete(t.Records)..where((tbl) => tbl.id.equals(id)));
  }

  Future<void> deleteAllRecords() async {
    await delete(t.Records).go();
  }

  Future<List<Records>> getRecordsByProject(int projectId) async {
    return await (select(t.Records)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }

  Future<List<Records>> getActiveRecords() async {
    return await (select(t.Records)
          ..where((tbl) => tbl.isArchived.equals(false) & tbl.isHidden.equals(false))).get();
  }
}