import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_step_configs.dart';

part 'record_step_config_dao.g.dart';

@DriftAccessor(tables: [RecordStepConfigs])
class RecordStepConfigDao extends DatabaseAccessor<AppDatabase> with _$RecordStepConfigDaoMixin {
  RecordStepConfigDao(super.db);

  /// 插入新的记录步骤配置数据
  Future<int> insertRecordStepConfig(Insertable<RecordStepConfig> recordStepConfig) {
    return into(recordStepConfigs).insert(recordStepConfig);
  }

  /// 获取所有记录步骤配置数据
  Future<List<RecordStepConfig>> getAllRecordStepConfigs() {
    return select(recordStepConfigs).get();
  }

  /// 根据ID获取记录步骤配置数据
  Future<RecordStepConfig?> getRecordStepConfigById(int id) {
    return (select(recordStepConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  /// 根据记录类型ID获取步骤配置
  Future<List<RecordStepConfig>> getRecordStepConfigsByRecordTypeId(int recordTypeId) {
    return (select(recordStepConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).get();
  }

  /// 根据记录类型ID和步骤名称获取配置
  Future<RecordStepConfig?> getRecordStepConfigByName(int recordTypeId, String stepName) {
    return (select(recordStepConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId) & tbl.stepName.equals(stepName)))
        .getSingleOrNull();
  }

  /// 更新记录步骤配置数据
  Future<int> updateRecordStepConfig(RecordStepConfig entry) {
    return (update(recordStepConfigs)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  /// 删除记录步骤配置数据
  Future<int> deleteRecordStepConfig(int id) {
    return (delete(recordStepConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// 根据记录类型ID删除所有步骤配置
  Future<int> deleteRecordStepConfigsByRecordTypeId(int recordTypeId) {
    return (delete(recordStepConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).go();
  }
}