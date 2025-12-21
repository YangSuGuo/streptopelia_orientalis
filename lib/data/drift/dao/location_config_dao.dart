import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/location_config.dart';
import 'base_dao.dart';

part 'location_config_dao.g.dart';

@DriftAccessor(tables: [LocationConfigs])
class LocationConfigDao extends DatabaseAccessor<AppDatabase> implements BaseDao<LocationConfig> {
  LocationConfigDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(LocationConfig entity) async {
    return into(locationConfigs).insert(LocationConfigsCompanion.insert(
      recordTypeId: entity.recordTypeId,
      requireLocation: entity.requireLocation,
      locationAccuracy: entity.locationAccuracy,
      locationTimeout: entity.locationTimeout,
      showLocationDetails: entity.showLocationDetails,
      createdAt: entity.createdAt,
    ));
  }

  @override
  Future<int> update(LocationConfig entity) async {
    return update(locationConfigs).replace(LocationConfigsCompanion(
      id: Value(entity.id!),
      recordTypeId: Value(entity.recordTypeId),
      requireLocation: Value(entity.requireLocation),
      locationAccuracy: Value(entity.locationAccuracy),
      locationTimeout: Value(entity.locationTimeout),
      showLocationDetails: Value(entity.showLocationDetails),
      createdAt: Value(entity.createdAt!),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(locationConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<LocationConfig>> findAll() async {
    return select(locationConfigs).get().then((rows) => rows.map((row) => LocationConfig(
      id: row.id,
      recordTypeId: row.recordTypeId,
      requireLocation: row.requireLocation,
      locationAccuracy: row.locationAccuracy,
      locationTimeout: row.locationTimeout,
      showLocationDetails: row.showLocationDetails,
      createdAt: row.createdAt,
    )).toList());
  }

  @override
  Future<LocationConfig?> findById(int id) async {
    final result = await (select(locationConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return LocationConfig(
      id: result.id,
      recordTypeId: result.recordTypeId,
      requireLocation: result.requireLocation,
      locationAccuracy: result.locationAccuracy,
      locationTimeout: result.locationTimeout,
      showLocationDetails: result.showLocationDetails,
      createdAt: result.createdAt,
    );
  }
}