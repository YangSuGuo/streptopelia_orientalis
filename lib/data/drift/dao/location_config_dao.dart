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
      locationId: entity.locationId,
      configKey: entity.configKey,
      configValue: entity.configValue,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(LocationConfig entity) async {
    return update(locationConfigs).replace(LocationConfigsCompanion(
      id: Value(entity.id!),
      locationId: Value(entity.locationId),
      configKey: Value(entity.configKey),
      configValue: Value(entity.configValue),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
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
      locationId: row.locationId,
      configKey: row.configKey,
      configValue: row.configValue,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<LocationConfig?> findById(int id) async {
    final result = await (select(locationConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return LocationConfig(
      id: result.id,
      locationId: result.locationId,
      configKey: result.configKey,
      configValue: result.configValue,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}