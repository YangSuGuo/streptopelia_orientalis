import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/records.dart';

part 'records_dao.g.dart';

@DriftAccessor(tables: [Records])
class RecordsDao extends DatabaseAccessor<AppDatabase> with _$RecordsDaoMixin {
  RecordsDao(super.db);

  Future<List<Record>> getAllRecords() async {
    return await select(db.records).get();
  }

  Future<Record?> getRecordById(int id) async {
    return await (select(db.records)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecord(Insertable<Record> record) async {
    return await into(db.records).insert(record);
  }

  Future<void> updateRecord(Record record) async {
    await (update(db.records)..where((tbl) => tbl.id.equals(record.id))).write(record);
  }

  Future<void> deleteRecord(int id) async {
    await (delete(db.records)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllRecords() async {
    await delete(db.records).go();
  }
}