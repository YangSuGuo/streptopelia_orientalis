import 'package:drift/drift.dart';
import '../data/database.dart';
import '../data/drift/tables/records.dart';
import 'base_dao.dart';

part 'records_dao.g.dart';

@DriftAccessor(tables: [Records])
class RecordsDao extends DatabaseAccessor<AppDatabase> with _$RecordsDaoMixin implements BaseDao<Records, int, RecordsCompanion> {
  RecordsDao(AppDatabase db) : super(db);

  @override
  AppDatabase get db => this.db;

  @override
  Future<int> insert(RecordsCompanion data) {
    return into(records).insert(data);
  }

  Future<int> insertRecord(RecordsCompanion data) {
    return into(records).insert(data);
  }

  @override
  Future<List<Map<String, dynamic>>> findAllRaw() {
    return select(records).get().then((list) => list.map((item) => item.toJson()).toList());
  }

  @override
  Future<List<RecordsData>> findAll() {
    return select(records).get();
  }

  Future<List<RecordsData>> findRecordsByType(int recordTypeId) {
    return (select(records)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).get();
  }

  Future<List<RecordsData>> findRecordsByStatus(String status) {
    return (select(records)..where((tbl) => tbl.status.equals(status))).get();
  }

  Future<List<RecordsData>> findDraftRecords() {
    return (select(records)..where((tbl) => tbl.status.equals('draft'))).get();
  }

  Future<List<RecordsData>> findPublishedRecords() {
    return (select(records)..where((tbl) => tbl.status.equals('published'))).get();
  }

  @override
  Future<RecordsData?> findById(int id) {
    return (select(records)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<RecordsData?> findRecordWithDetails(int id) async {
    final record = await (select(records)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    return record;
  }

  @override
  Future<int> update(int id, RecordsCompanion data) {
    return (update(records)..where((tbl) => tbl.id.equals(id))).write(data);
  }

  Future<int> updateRecordStatus(int id, String status) {
    return (update(records)..where((tbl) => tbl.id.equals(id))).write(RecordsCompanion(
      status: Value(status),
    ));
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(records)..where((tbl) => tbl.id.equals(id))).go();
  }
  
  Future<int> deleteAll() {
    return delete(records).go();
  }
}