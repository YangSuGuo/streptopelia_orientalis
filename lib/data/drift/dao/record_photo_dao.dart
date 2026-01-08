import 'package:drift/drift.dart';
import '../app_database.dart';

part 'record_photo_dao.g.dart';

@DriftAccessor(tables: [RecordPhotos])
class RecordPhotoDao extends DatabaseAccessor<AppDatabase> with _$RecordPhotoDaoMixin {
  RecordPhotoDao(AppDatabase db) : super(db);

  Future<List<RecordPhoto>> getAllRecordPhotos() {
    return select(recordPhotos).get();
  }

  Future<RecordPhoto?> getRecordPhotoById(int id) {
    return (select(recordPhotos)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecordPhoto(Insertable<RecordPhoto> recordPhoto) {
    return into(recordPhotos).insert(recordPhoto);
  }

  Future<void> updateRecordPhoto(RecordPhotoUpdates recordPhoto) {
    return update(recordPhotos).replace(recordPhoto);
  }

  Future<void> deleteRecordPhoto(int id) {
    return (delete(recordPhotos)..where((tbl) => tbl.id.equals(id))).go();
  }

  // Get record photos by record ID
  Future<List<RecordPhoto>> getRecordPhotosByRecordId(int recordId) {
    return (select(recordPhotos)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  // Get record photos by record ID ordered by sort order
  Future<List<RecordPhoto>> getRecordPhotosByRecordIdOrdered(int recordId) {
    return (select(recordPhotos)
          ..where((tbl) => tbl.recordId.equals(recordId))
          ..orderBy([(t) => OrderingTerm(expression: t.sortOrder)])).get();
  }
}