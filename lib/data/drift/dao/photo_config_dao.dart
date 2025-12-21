import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/photo_config.dart';
import 'base_dao.dart';

part 'photo_config_dao.g.dart';

@DriftAccessor(tables: [PhotoConfigs])
class PhotoConfigDao extends DatabaseAccessor<AppDatabase> implements BaseDao<PhotoConfig> {
  PhotoConfigDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(PhotoConfig entity) async {
    return into(photoConfigs).insert(PhotoConfigsCompanion.insert(
      photoId: entity.photoId,
      configKey: entity.configKey,
      configValue: entity.configValue,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(PhotoConfig entity) async {
    return update(photoConfigs).replace(PhotoConfigsCompanion(
      id: Value(entity.id!),
      photoId: Value(entity.photoId),
      configKey: Value(entity.configKey),
      configValue: Value(entity.configValue),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(photoConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<PhotoConfig>> findAll() async {
    return select(photoConfigs).get().then((rows) => rows.map((row) => PhotoConfig(
      id: row.id,
      photoId: row.photoId,
      configKey: row.configKey,
      configValue: row.configValue,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<PhotoConfig?> findById(int id) async {
    final result = await (select(photoConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return PhotoConfig(
      id: result.id,
      photoId: result.photoId,
      configKey: result.configKey,
      configValue: result.configValue,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}