import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_photos.dart';

part 'record_photo_dao.g.dart';

@DriftAccessor(tables: [RecordPhotos])
class RecordPhotoDao extends DatabaseAccessor<AppDatabase> with _$RecordPhotoDaoMixin {
  RecordPhotoDao(super.db);

  Future<int> insertRecordPhoto(Insertable<RecordPhoto> recordPhoto) {
    return into(recordPhotos).insert(recordPhoto);
  }

  Future<List<RecordPhoto>> getAllRecordPhotos() {
    return select(recordPhotos).get();
  }

  Future<RecordPhoto?> getRecordPhotoById(int id) {
    return (select(recordPhotos)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<RecordPhoto>> getRecordPhotosByRecordId(int recordId) {
    return (select(recordPhotos)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  Future<List<RecordPhoto>> getRecordPhotosByRecordIdOrdered(int recordId) {
    return (select(recordPhotos)
          ..where((tbl) => tbl.recordId.equals(recordId))
          ..orderBy([(t) => OrderingTerm(expression: t.sortOrder)]))
        .get();
  }

  Future<int> updateRecordPhoto(RecordPhoto entry) {
    return (update(recordPhotos)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteRecordPhoto(int id) {
    return (delete(recordPhotos)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteRecordPhotosByRecordId(int recordId) {
    return (delete(recordPhotos)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }
}