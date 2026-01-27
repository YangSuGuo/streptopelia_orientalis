import 'package:drift/drift.dart';
import '../tables/location_record.dart' as t;
import '../entities/location_record.dart';

part 'location_record_dao.g.dart';

@DriftAccessor(tables: [t.LocationRecord])
class LocationRecordDao extends DatabaseAccessor<t.LocationRecordDB> with _$LocationRecordDaoMixin {
  LocationRecordDao(t.LocationRecordDB attachedDatabase) : super(attachedDatabase);

  // 插入新的位置记录
  Future<int> insertLocationRecord(LocationRecord data) async {
    return await into(t.locationRecord).insert(
      t.LocationRecordCompanion.insert(
        projectId: data.projectId,
        recordId: data.recordId,
        locationName: data.locationName,
        accuracy: data.accuracy,
        longitude: data.longitude,
        latitude: data.latitude,
        createdAt: data.createdAt,
      ),
    );
  }

  // 根据ID获取位置记录
  Future<LocationRecord?> getLocationRecordById(int id) async {
    final record = await select(t.locationRecord).where((tbl) => tbl.id.equals(id)).getSingleOrNull();
    return record != null ? LocationRecord.fromJson(record.toJson()) : null;
  }

  // 根据记录ID获取位置记录
  Future<List<LocationRecord>> getLocationRecordsByRecordId(int recordId) async {
    final records = await (select(t.locationRecord)..where((tbl) => tbl.recordId.equals(recordId))).get();
    return records.map((record) => LocationRecord.fromJson(record.toJson())).toList();
  }
  
  // 获取指定项目的所有位置记录
  Future<List<LocationRecord>> getLocationRecordsByProjectId(int projectId) async {
    final records = await (select(t.locationRecord)..where((tbl) => tbl.projectId.equals(projectId))).get();
    return records.map((record) => LocationRecord.fromJson(record.toJson())).toList();
  }

  // 更新位置记录
  Future<int> updateLocationRecord(int id, LocationRecord data) async {
    return await update(t.locationRecord).replace(
      t.LocationRecordCompanion(
        id: Value(id),
        projectId: Value(data.projectId),
        recordId: Value(data.recordId),
        locationName: Value(data.locationName),
        accuracy: Value(data.accuracy),
        longitude: Value(data.longitude),
        latitude: Value(data.latitude),
        createdAt: Value(data.createdAt),
      ),
    );
  }

  // 删除位置记录
  Future<int> deleteLocationRecord(int id) async {
    return await delete(t.locationRecord).deleteWhere((tbl) => tbl.id.equals(id));
  }

  // 删除指定项目的全部位置记录
  Future<int> deleteAllLocationRecordsByProjectId(int projectId) async {
    return await delete(t.locationRecord).deleteWhere((tbl) => tbl.projectId.equals(projectId));
  }

  // 删除指定记录的全部位置记录
  Future<int> deleteAllLocationRecordsByRecordId(int recordId) async {
    return await delete(t.locationRecord).deleteWhere((tbl) => tbl.recordId.equals(recordId));
  }
}