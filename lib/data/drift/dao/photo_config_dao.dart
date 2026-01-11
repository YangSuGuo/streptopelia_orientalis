import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/photo_configs.dart';

part 'photo_config_dao.g.dart';

@DriftAccessor(tables: [PhotoConfigs])
class PhotoConfigDao extends DatabaseAccessor<AppDatabase> with _$PhotoConfigDaoMixin {
  PhotoConfigDao(super.db);

  /// 插入新的照片配置数据
  Future<int> insertPhotoConfig(Insertable<PhotoConfig> photoConfig) {
    return into(photoConfigs).insert(photoConfig);
  }

  /// 获取所有照片配置数据
  Future<List<PhotoConfig>> getAllPhotoConfigs() {
    return select(photoConfigs).get();
  }

  /// 根据ID获取照片配置数据
  Future<PhotoConfig?> getPhotoConfigById(int id) {
    return (select(photoConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  /// 根据记录类型ID获取照片配置
  Future<PhotoConfig?> getPhotoConfigByRecordTypeId(int recordTypeId) {
    return (select(photoConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).getSingleOrNull();
  }

  /// 更新照片配置数据
  Future<int> updatePhotoConfig(PhotoConfig entry) {
    return (update(photoConfigs)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  /// 删除照片配置数据
  Future<int> deletePhotoConfig(int id) {
    return (delete(photoConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// 根据记录类型ID删除照片配置
  Future<int> deletePhotoConfigByRecordTypeId(int recordTypeId) {
    return (delete(photoConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).go();
  }
}