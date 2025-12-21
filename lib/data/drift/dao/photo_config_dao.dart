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
      recordTypeId: entity.recordTypeId,
      maxPhotos: entity.maxPhotos,
      requirePhoto: entity.requirePhoto,
      photoQuality: entity.photoQuality,
      allowMultiple: entity.allowMultiple,
      enableThumbnail: entity.enableThumbnail,
      createdAt: entity.createdAt,
    ));
  }

  @override
  Future<int> update(PhotoConfig entity) async {
    return update(photoConfigs).replace(PhotoConfigsCompanion(
      id: Value(entity.id!),
      recordTypeId: Value(entity.recordTypeId),
      maxPhotos: Value(entity.maxPhotos),
      requirePhoto: Value(entity.requirePhoto),
      photoQuality: Value(entity.photoQuality),
      allowMultiple: Value(entity.allowMultiple),
      enableThumbnail: Value(entity.enableThumbnail),
      createdAt: Value(entity.createdAt!),
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
      recordTypeId: row.recordTypeId,
      maxPhotos: row.maxPhotos,
      requirePhoto: row.requirePhoto,
      photoQuality: row.photoQuality,
      allowMultiple: row.allowMultiple,
      enableThumbnail: row.enableThumbnail,
      createdAt: row.createdAt,
    )).toList());
  }

  @override
  Future<PhotoConfig?> findById(int id) async {
    final result = await (select(photoConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return PhotoConfig(
      id: result.id,
      recordTypeId: result.recordTypeId,
      maxPhotos: result.maxPhotos,
      requirePhoto: result.requirePhoto,
      photoQuality: result.photoQuality,
      allowMultiple: result.allowMultiple,
      enableThumbnail: result.enableThumbnail,
      createdAt: result.createdAt,
    );
  }
}