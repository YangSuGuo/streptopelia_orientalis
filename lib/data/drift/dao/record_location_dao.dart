import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/record_location.dart';
import 'base_dao.dart';

part 'record_location_dao.g.dart';

@DriftAccessor(tables: [RecordLocations])
class RecordLocationDao extends DatabaseAccessor<AppDatabase> implements BaseDao<RecordLocation> {
  RecordLocationDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(RecordLocation entity) async {
    return into(recordLocations).insert(RecordLocationsCompanion.insert(
      recordId: entity.recordId,
      locationName: entity.locationName,
      latitude: entity.latitude,
      longitude: entity.longitude,
      accuracy: entity.accuracy,
      address: entity.address,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(RecordLocation entity) async {
    return update(recordLocations).replace(RecordLocationsCompanion(
      id: Value(entity.id!),
      recordId: Value(entity.recordId),
      locationName: Value(entity.locationName),
      latitude: Value(entity.latitude),
      longitude: Value(entity.longitude),
      accuracy: Value(entity.accuracy),
      address: Value(entity.address),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(recordLocations)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<RecordLocation>> findAll() async {
    return select(recordLocations).get().then((rows) => rows.map((row) => RecordLocation(
      id: row.id,
      recordId: row.recordId,
      locationName: row.locationName,
      latitude: row.latitude,
      longitude: row.longitude,
      accuracy: row.accuracy,
      address: row.address,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<RecordLocation?> findById(int id) async {
    final result = await (select(recordLocations)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return RecordLocation(
      id: result.id,
      recordId: result.recordId,
      locationName: result.locationName,
      latitude: result.latitude,
      longitude: result.longitude,
      accuracy: result.accuracy,
      address: result.address,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}