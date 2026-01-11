import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_type_configs.dart';

part 'record_type_config_dao.g.dart';

@DriftAccessor(tables: [RecordTypeConfigs])
class RecordTypeConfigDao extends DatabaseAccessor<AppDatabase> with _$RecordTypeConfigDaoMixin {
  RecordTypeConfigDao(super.db);

  /// 插入新的记录类型配置数据
  Future<int> insertRecordTypeConfig(Insertable<RecordTypeConfig> recordTypeConfig) {
    return into(recordTypeConfigs).insert(recordTypeConfig);
  }

  /// 获取所有记录类型配置数据
  Future<List<RecordTypeConfig>> getAllRecordTypeConfigs() {
    return select(recordTypeConfigs).get();
  }

  /// 根据ID获取记录类型配置数据
  Future<RecordTypeConfig?> getRecordTypeConfigById(int id) {
    return (select(recordTypeConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  /// 根据记录类型ID获取配置列表
  Future<List<RecordTypeConfig>> getRecordTypeConfigsByRecordTypeId(int recordTypeId) {
    return (select(recordTypeConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).get();
  }

  /// 根据记录类型ID和配置键获取配置
  Future<RecordTypeConfig?> getRecordTypeConfigByKey(int recordTypeId, String configKey) {
    return (select(recordTypeConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId) & tbl.configKey.equals(configKey)))
        .getSingleOrNull();
  }

  /// 更新记录类型配置数据
  Future<int> updateRecordTypeConfig(RecordTypeConfig entry) {
    return (update(recordTypeConfigs)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  /// 删除记录类型配置数据
  Future<int> deleteRecordTypeConfig(int id) {
    return (delete(recordTypeConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// 根据记录类型ID删除所有配置
  Future<int> deleteRecordTypeConfigsByRecordTypeId(int recordTypeId) {
    return (delete(recordTypeConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).go();
  }

  /// 根据记录类型ID和配置键删除配置
  Future<int> deleteRecordTypeConfigByKey(int recordTypeId, String configKey) {
    return (delete(recordTypeConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId) & tbl.configKey.equals(configKey)))
        .go();
  }
}