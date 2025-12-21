import 'package:drift/drift.dart';
import '../data/database.dart';
import '../data/drift/tables/record_photos.dart';
import 'base_dao.dart';

part 'record_photos_dao.g.dart';

@DriftAccessor(tables: [RecordPhotos])
class RecordPhotosDao extends DatabaseAccessor<AppDatabase> with _$RecordPhotosDaoMixin implements BaseDao<RecordPhotos, int> {
  RecordPhotosDao(AppDatabase db) : super(db);

  @override
  Future<int> insert(RecordPhotosCompanion data) {
    return into(recordPhotos).insert(data);
  }

  @override
  Future<List<RecordPhotosData>> findAll() {
    return select(recordPhotos).get();
  }

  @override
  Future<RecordPhotosData?> findById(int id) {
    return (select(recordPhotos)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<RecordPhotosData>> findPhotosByRecord(int recordId) {
    return (select(recordPhotos)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  Future<List<RecordPhotosData>> findPhotosByRecordWithOrder(int recordId) {
    return (select(recordPhotos)
          ..where((tbl) => tbl.recordId.equals(recordId))
          ..orderBy([(t) => OrderingTerm(expression: t.sortOrder)]))
        .get();
  }

  @override
  Future<int> update(RecordPhotosCompanion data) {
    return (update(recordPhotos)..where((tbl) => tbl.id.equals(data.id.value))).write(data);
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(recordPhotos)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deletePhotosByRecord(int recordId) {
    return (delete(recordPhotos)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }
  
  Future<int> deleteAll() {
    return delete(recordPhotos).go();
  }
}