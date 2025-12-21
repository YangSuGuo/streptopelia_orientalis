import 'package:drift/drift.dart';
import '../data/database.dart';
import '../data/drift/tables/location_configs.dart';
import 'base_dao.dart';

part 'location_configs_dao.g.dart';

@DriftAccessor(tables: [LocationConfigs])
class LocationConfigsDao extends DatabaseAccessor<AppDatabase> with _$LocationConfigsDaoMixin implements BaseDao<LocationConfigs, int> {
  LocationConfigsDao(AppDatabase db) : super(db);

  @override
  Future<int> insert(LocationConfigsCompanion data) {
    return into(locationConfigs).insert(data);
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
  Future<int> update(LocationConfigsCompanion data) {
    return (update(locationConfigs)..where((tbl) => tbl.id.equals(data.id.value))).write(data);
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