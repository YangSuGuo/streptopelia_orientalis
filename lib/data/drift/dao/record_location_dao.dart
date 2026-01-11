import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_locations.dart';

part 'record_location_dao.g.dart';

@DriftAccessor(tables: [RecordLocations])
class RecordLocationDao extends DatabaseAccessor<AppDatabase> with _$RecordLocationDaoMixin {
  RecordLocationDao(super.db);

  /// 插入新的记录位置数据
  Future<int> insertRecordLocation(Insertable<RecordLocation> recordLocation) {
    return into(recordLocations).insert(recordLocation);
  }

  /// 获取所有记录位置数据
  Future<List<RecordLocation>> getAllRecordLocations() {
    return select(recordLocations).get();
  }

  /// 根据ID获取记录位置数据
  Future<RecordLocation?> getRecordLocationById(int id) {
    return (select(recordLocations)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  /// 根据记录ID获取位置信息
  Future<RecordLocation?> getRecordLocationByRecordId(int recordId) {
    return (select(recordLocations)..where((tbl) => tbl.recordId.equals(recordId))).getSingleOrNull();
  }

  /// 根据记录ID获取位置列表（如果有多个位置）
  Future<List<RecordLocation>> getRecordLocationsByRecordId(int recordId) {
    return (select(recordLocations)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  /// 更新记录位置数据
  Future<int> updateRecordLocation(RecordLocation entry) {
    return (update(recordLocations)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  /// 删除记录位置数据
  Future<int> deleteRecordLocation(int id) {
    return (delete(recordLocations)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// 根据记录ID删除位置信息
  Future<int> deleteRecordLocationByRecordId(int recordId) {
    return (delete(recordLocations)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }
}