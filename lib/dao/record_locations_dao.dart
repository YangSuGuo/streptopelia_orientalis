import 'package:drift/drift.dart';
import '../data/database.dart';
import '../data/drift/tables/record_locations.dart';
import 'base_dao.dart';

part 'record_locations_dao.g.dart';

@DriftAccessor(tables: [RecordLocations])
class RecordLocationsDao extends DatabaseAccessor<AppDatabase> with _$RecordLocationsDaoMixin implements BaseDao<RecordLocations, int, RecordLocationsCompanion> {
  RecordLocationsDao(AppDatabase db) : super(db);

  @override
  AppDatabase get db => this.db;

  @override
  Future<int> insert(RecordLocationsCompanion data) {
    return into(recordLocations).insert(data);
  }

  @override
  Future<List<Map<String, dynamic>>> findAllRaw() {
    return select(recordLocations).get().then((list) => list.map((item) => item.toJson()).toList());
  }

  @override
  Future<List<RecordLocationsData>> findAll() {
    return select(recordLocations).get();
  }

  @override
  Future<RecordLocationsData?> findById(int id) {
    return (select(recordLocations)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<RecordLocationsData>> findLocationsByRecord(int recordId) {
    return (select(recordLocations)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  Future<RecordLocationsData?> findLatestLocationByRecord(int recordId) {
    return (select(recordLocations)
          ..where((tbl) => tbl.recordId.equals(recordId))
          ..orderBy([(t) => OrderingTerm.desc(t.createdAt)]))
        .getSingleOrNull();
  }

  @override
  Future<int> update(int id, RecordLocationsCompanion data) {
    return (update(recordLocations)..where((tbl) => tbl.id.equals(id))).write(data);
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(recordLocations)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteLocationsByRecord(int recordId) {
    return (delete(recordLocations)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }
  
  Future<int> deleteAll() {
    return delete(recordLocations).go();
  }
}