import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/location_configs.dart';
import 'base_dao.dart';

part 'location_configs_dao.g.dart';

@DriftAccessor(tables: [LocationConfigs])
class LocationConfigsDao extends DatabaseAccessor<AppDatabase> with _$LocationConfigsDaoMixin implements BaseDao<LocationConfigs, int, LocationConfigsCompanion> {
  LocationConfigsDao(AppDatabase db) : super(db);

  @override
  AppDatabase get db => this.db;

  @override
  Future<int> insert(LocationConfigsCompanion data) {
    return into(locationConfigs).insert(data);
  }

  @override
  Future<List<Map<String, dynamic>>> findAllRaw() {
    return select(locationConfigs).get().then((list) => list.map((item) => item.toJson()).toList());
  }

  @override
  Future<List<LocationConfigsData>> findAll() {
    return select(locationConfigs).get();
  }

  @override
  Future<LocationConfigsData?> findById(int id) {
    return (select(locationConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<LocationConfigsData?> findByRecordType(int recordTypeId) {
    return (select(locationConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).getSingleOrNull();
  }

  @override
  Future<int> update(int id, LocationConfigsCompanion data) {
    return (update(locationConfigs)..where((tbl) => tbl.id.equals(id))).write(data);
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(locationConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteByRecordType(int recordTypeId) {
    return (delete(locationConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).go();
  }
  
  Future<int> deleteAll() {
    return delete(locationConfigs).go();
  }
}