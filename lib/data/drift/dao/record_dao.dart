import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/records.dart';

part 'record_dao.g.dart';

@DriftAccessor(tables: [Records])
class RecordDao extends DatabaseAccessor<AppDatabase> with _$RecordDaoMixin {
  RecordDao(super.db);

  // Create
  Future<int> insertRecord(Insertable<RecordsData> record) {
    return into(records).insert(record);
  }

  // Read - Get all records
  Future<List<Record>> getAllRecords() {
    return select(records).get();
  }

  // Read - Get record by ID
  Future<Record?> getRecordById(int id) {
    return (select(records)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  // Read - Get records by record type ID
  Future<List<Record>> getRecordsByRecordTypeId(int recordTypeId) {
    return (select(records)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).get();
  }

  // Read - Get records by status
  Future<List<Record>> getRecordsByStatus(String status) {
    return (select(records)..where((tbl) => tbl.status.equals(status))).get();
  }

  // Update
  Future<int> updateRecord(Record entry) {
    return (update(records)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  // Delete
  Future<int> deleteRecord(int id) {
    return (delete(records)..where((tbl) => tbl.id.equals(id))).go();
  }
}