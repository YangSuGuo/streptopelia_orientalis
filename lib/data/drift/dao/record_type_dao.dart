import 'package:drift/drift.dart';
import '../app_database.dart';

part 'record_type_dao.g.dart';

@DriftAccessor(tables: [RecordTypes])
class RecordTypeDao extends DatabaseAccessor<AppDatabase> with _$RecordTypeDaoMixin {
  RecordTypeDao(AppDatabase db) : super(db);

  Future<List<RecordType>> getAllRecordTypes() {
    return select(recordTypes).get();
  }

  Future<RecordType?> getRecordTypeById(int id) {
    return (select(recordTypes)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecordType(Insertable<RecordType> recordType) {
    return into(recordTypes).insert(recordType);
  }

  Future<void> updateRecordType(RecordTypeUpdates recordType) {
    return update(recordTypes).replace(recordType);
  }

  Future<void> deleteRecordType(int id) {
    return (delete(recordTypes)..where((tbl) => tbl.id.equals(id))).go();
  }

  // Get record types by category ID
  Future<List<RecordType>> getRecordTypesByCategoryId(int categoryId) {
    return (select(recordTypes)..where((tbl) => tbl.categoryId.equals(categoryId))).get();
  }
}