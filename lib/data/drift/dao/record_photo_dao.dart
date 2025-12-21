import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/record_photo.dart';
import 'base_dao.dart';

part 'record_photo_dao.g.dart';

@DriftAccessor(tables: [RecordPhotos])
class RecordPhotoDao extends DatabaseAccessor<AppDatabase> implements BaseDao<RecordPhoto> {
  RecordPhotoDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(RecordPhoto entity) async {
    return into(recordPhotos).insert(RecordPhotosCompanion.insert(
      recordId: entity.recordId,
      photoPath: entity.photoPath,
      thumbnailPath: entity.thumbnailPath,
      photoOrder: entity.photoOrder,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(RecordPhoto entity) async {
    return update(recordPhotos).replace(RecordPhotosCompanion(
      id: Value(entity.id!),
      recordId: Value(entity.recordId),
      photoPath: Value(entity.photoPath),
      thumbnailPath: Value(entity.thumbnailPath),
      photoOrder: Value(entity.photoOrder),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(recordPhotos)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<RecordPhoto>> findAll() async {
    return select(recordPhotos).get().then((rows) => rows.map((row) => RecordPhoto(
      id: row.id,
      recordId: row.recordId,
      photoPath: row.photoPath,
      thumbnailPath: row.thumbnailPath,
      photoOrder: row.photoOrder,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<RecordPhoto?> findById(int id) async {
    final result = await (select(recordPhotos)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return RecordPhoto(
      id: result.id,
      recordId: result.recordId,
      photoPath: result.photoPath,
      thumbnailPath: result.thumbnailPath,
      photoOrder: result.photoOrder,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}