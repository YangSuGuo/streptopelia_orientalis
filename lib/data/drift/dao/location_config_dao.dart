import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/location_configs.dart';

part 'location_config_dao.g.dart';

@DriftAccessor(tables: [LocationConfigs])
class LocationConfigDao extends DatabaseAccessor<AppDatabase> with _$LocationConfigDaoMixin {
  LocationConfigDao(super.db);

  /// 插入新的位置配置数据
  Future<int> insertLocationConfig(Insertable<LocationConfig> locationConfig) {
    return into(locationConfigs).insert(locationConfig);
  }

  /// 获取所有位置配置数据
  Future<List<LocationConfig>> getAllLocationConfigs() {
    return select(locationConfigs).get();
  }

  /// 根据ID获取位置配置数据
  Future<LocationConfig?> getLocationConfigById(int id) {
    return (select(locationConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  /// 根据记录类型ID获取位置配置
  Future<LocationConfig?> getLocationConfigByRecordTypeId(int recordTypeId) {
    return (select(locationConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).getSingleOrNull();
  }

  /// 更新位置配置数据
  Future<int> updateLocationConfig(LocationConfig entry) {
    return (update(locationConfigs)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  /// 删除位置配置数据
  Future<int> deleteLocationConfig(int id) {
    return (delete(locationConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// 根据记录类型ID删除位置配置
  Future<int> deleteLocationConfigByRecordTypeId(int recordTypeId) {
    return (delete(locationConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).go();
  }
}