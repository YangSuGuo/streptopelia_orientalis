import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record.dart';

part 'record_dao.g.dart';

@DriftAccessor(tables: [Record])
class RecordDao extends DatabaseAccessor<AppDatabase> with _$RecordDaoMixin {
  RecordDao(super.db);

  Future<int> insertRecord(Insertable<Record> record) {
    return into(record).insert(record);
  }

  Future<List<Record>> getAllRecords() {
    return select(record).get();
  }

  Future<List<Record>> getRecordsByProject(int projectId) {
    return (select(record)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }

  Future<Record?> getRecordById(int id) {
    return (select(record)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> updateRecord(Record entry) {
    return (update(record)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteRecord(int id) {
    return (delete(record)..where((tbl) => tbl.id.equals(id))).go();
  }
}