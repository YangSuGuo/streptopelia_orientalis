import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/location_record.dart';

part 'location_record_dao.g.dart';

@DriftAccessor(tables: [LocationRecord])
class LocationRecordDao extends DatabaseAccessor<AppDatabase> with _$LocationRecordDaoMixin {
  LocationRecordDao(super.db);

  Future<int> insertLocationRecord(Insertable<LocationRecord> locationRecord) {
    return into(locationRecord).insert(locationRecord);
  }

  Future<List<LocationRecord>> getAllLocationRecords() {
    return select(locationRecord).get();
  }

  Future<List<LocationRecord>> getLocationRecordsByProject(int projectId) {
    return (select(locationRecord)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }

  Future<List<LocationRecord>> getLocationRecordsByRecord(int recordId) {
    return (select(locationRecord)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  Future<LocationRecord?> getLocationRecordById(int id) {
    return (select(locationRecord)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> updateLocationRecord(LocationRecord entry) {
    return (update(locationRecord)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteLocationRecord(int id) {
    return (delete(locationRecord)..where((tbl) => tbl.id.equals(id))).go();
  }
}