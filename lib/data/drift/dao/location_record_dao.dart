import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/location_record.dart';

part 'location_record_dao.g.dart';

@DriftAccessor(tables: [LocationRecord])
class LocationRecordDao extends DatabaseAccessor<AppDatabase> with _$LocationRecordDaoMixin {
  LocationRecordDao(super.db);

  Future<List<LocationRecordData>> getAllLocationRecords() async {
    return await select(db.locationRecord).get();
  }

  Future<LocationRecordData?> getLocationRecordById(int id) async {
    return await (select(db.locationRecord)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertLocationRecord(Insertable<LocationRecordData> locationRecord) async {
    return await into(db.locationRecord).insert(locationRecord);
  }

  Future<void> updateLocationRecord(LocationRecordData locationRecord) async {
    await (update(db.locationRecord)..where((tbl) => tbl.id.equals(locationRecord.id))).write(locationRecord);
  }

  Future<void> deleteLocationRecord(int id) async {
    await (delete(db.locationRecord)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllLocationRecords() async {
    await delete(db.locationRecord).go();
  }
}