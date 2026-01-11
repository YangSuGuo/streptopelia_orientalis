import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_photos.dart';

part 'record_photo_dao.g.dart';

@DriftAccessor(tables: [RecordPhotos])
class RecordPhotoDao extends DatabaseAccessor<AppDatabase> with _$RecordPhotoDaoMixin {
  RecordPhotoDao(super.db);

  // Create
  Future<int> insertRecordPhoto(Insertable<RecordPhotosData> recordPhoto) {
    return into(recordPhotos).insert(recordPhoto);
  }

  // Read - Get all record photos
  Future<List<RecordPhoto>> getAllRecordPhotos() {
    return select(recordPhotos).get();
  }

  // Read - Get record photo by ID
  Future<RecordPhoto?> getRecordPhotoById(int id) {
    return (select(recordPhotos)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  // Read - Get record photos by record ID
  Future<List<RecordPhoto>> getRecordPhotosByRecordId(int recordId) {
    return (select(recordPhotos)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  // Read - Get record photos by record ID ordered by sort order
  Future<List<RecordPhoto>> getRecordPhotosByRecordIdOrdered(int recordId) {
    return (select(recordPhotos)
          ..where((tbl) => tbl.recordId.equals(recordId))
          ..orderBy([(t) => OrderingTerm(expression: t.sortOrder)]))
        .get();
  }

  // Update
  Future<int> updateRecordPhoto(RecordPhoto entry) {
    return (update(recordPhotos)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  // Delete
  Future<int> deleteRecordPhoto(int id) {
    return (delete(recordPhotos)..where((tbl) => tbl.id.equals(id))).go();
  }

  // Delete all record photos by record ID
  Future<int> deleteRecordPhotosByRecordId(int recordId) {
    return (delete(recordPhotos)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }
}