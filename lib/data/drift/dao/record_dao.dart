import 'package:drift/drift.dart';
import '../app_database.dart';

part 'record_dao.g.dart';

@DriftAccessor(tables: [Records])
class RecordDao extends DatabaseAccessor<AppDatabase> with _$RecordDaoMixin {
  RecordDao(AppDatabase db) : super(db);

  Future<List<Record>> getAllRecords() {
    return select(records).get();
  }

  Future<Record?> getRecordById(int id) {
    return (select(records)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecord(Insertable<Record> record) {
    return into(records).insert(record);
  }

  Future<void> updateRecord(RecordUpdates record) {
    return update(records).replace(record);
  }

  Future<void> deleteRecord(int id) {
    return (delete(records)..where((tbl) => tbl.id.equals(id))).go();
  }

  // Get records by record type ID
  Future<List<Record>> getRecordsByRecordTypeId(int recordTypeId) {
    return (select(records)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).get();
  }

  // Get records by date range
  Future<List<Record>> getRecordsByDateRange(DateTime start, DateTime end) {
    return (select(records)..where((tbl) => tbl.createdAt.isBetween(start, end))).get();
  }
}