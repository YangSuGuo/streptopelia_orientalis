import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/records.dart';

part 'record_dao.g.dart';

@DriftAccessor(tables: [Records])
class RecordDao extends DatabaseAccessor<AppDatabase> with _$RecordDaoMixin {
  RecordDao(super.db);

  Future<int> insertRecord(Insertable<Record> record) {
    return into(records).insert(record);
  }

  Future<List<Record>> getAllRecords() {
    return select(records).get();
  }

  Future<Record?> getRecordById(int id) {
    return (select(records)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<Record>> getRecordsByRecordTypeId(int recordTypeId) {
    return (select(records)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).get();
  }

  Future<List<Record>> getRecordsByStatus(String status) {
    return (select(records)..where((tbl) => tbl.status.equals(status))).get();
  }

  Future<int> updateRecord(Record entry) {
    return (update(records)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteRecord(int id) {
    return (delete(records)..where((tbl) => tbl.id.equals(id))).go();
  }
}