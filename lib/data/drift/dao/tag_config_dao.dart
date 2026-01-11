import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/tag_configs.dart';

part 'tag_config_dao.g.dart';

@DriftAccessor(tables: [TagConfigs])
class TagConfigDao extends DatabaseAccessor<AppDatabase> with _$TagConfigDaoMixin {
  TagConfigDao(super.db);

  /// 插入新的标签配置数据
  Future<int> insertTagConfig(Insertable<TagConfig> tagConfig) {
    return into(tagConfigs).insert(tagConfig);
  }

  /// 获取所有标签配置数据
  Future<List<TagConfig>> getAllTagConfigs() {
    return select(tagConfigs).get();
  }

  /// 根据ID获取标签配置数据
  Future<TagConfig?> getTagConfigById(int id) {
    return (select(tagConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  /// 根据记录类型ID获取标签配置列表
  Future<List<TagConfig>> getTagConfigsByRecordTypeId(int recordTypeId) {
    return (select(tagConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).get();
  }

  /// 根据记录类型ID和标签名获取配置
  Future<TagConfig?> getTagConfigByName(int recordTypeId, String tagName) {
    return (select(tagConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId) & tbl.tagName.equals(tagName)))
        .getSingleOrNull();
  }

  /// 获取预设标签配置
  Future<List<TagConfig>> getPresetTagConfigs() {
    return (select(tagConfigs)..where((tbl) => tbl.isPreset.equals(true))).get();
  }

  /// 更新标签配置数据
  Future<int> updateTagConfig(TagConfig entry) {
    return (update(tagConfigs)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  /// 删除标签配置数据
  Future<int> deleteTagConfig(int id) {
    return (delete(tagConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// 根据记录类型ID删除所有标签配置
  Future<int> deleteTagConfigsByRecordTypeId(int recordTypeId) {
    return (delete(tagConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).go();
  }

  /// 根据记录类型ID和标签名删除配置
  Future<int> deleteTagConfigByName(int recordTypeId, String tagName) {
    return (delete(tagConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId) & tbl.tagName.equals(tagName)))
        .go();
  }
}