import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_value_configs.dart';

part 'record_value_config_dao.g.dart';

@DriftAccessor(tables: [RecordValueConfigs])
class RecordValueConfigDao extends DatabaseAccessor<AppDatabase> with _$RecordValueConfigDaoMixin {
  RecordValueConfigDao(super.db);

  /// 插入新的记录值配置数据
  Future<int> insertRecordValueConfig(Insertable<RecordValueConfig> recordValueConfig) {
    return into(recordValueConfigs).insert(recordValueConfig);
  }

  /// 获取所有记录值配置数据
  Future<List<RecordValueConfig>> getAllRecordValueConfigs() {
    return select(recordValueConfigs).get();
  }

  /// 根据ID获取记录值配置数据
  Future<RecordValueConfig?> getRecordValueConfigById(int id) {
    return (select(recordValueConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  /// 根据记录类型ID获取值配置列表
  Future<List<RecordValueConfig>> getRecordValueConfigsByRecordTypeId(int recordTypeId) {
    return (select(recordValueConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).get();
  }

  /// 根据记录类型ID和字段名获取配置
  Future<RecordValueConfig?> getRecordValueConfigByField(int recordTypeId, String fieldName) {
    return (select(recordValueConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId) & tbl.fieldName.equals(fieldName)))
        .getSingleOrNull();
  }

  /// 更新记录值配置数据
  Future<int> updateRecordValueConfig(RecordValueConfig entry) {
    return (update(recordValueConfigs)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  /// 删除记录值配置数据
  Future<int> deleteRecordValueConfig(int id) {
    return (delete(recordValueConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// 根据记录类型ID删除所有值配置
  Future<int> deleteRecordValueConfigsByRecordTypeId(int recordTypeId) {
    return (delete(recordValueConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).go();
  }

  /// 根据记录类型ID和字段名删除配置
  Future<int> deleteRecordValueConfigByField(int recordTypeId, String fieldName) {
    return (delete(recordValueConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId) & tbl.fieldName.equals(fieldName)))
        .go();
  }
}