import 'package:drift/drift.dart';
import '../data/database.dart';
import '../data/drift/tables/photo_configs.dart';
import 'base_dao.dart';

part 'photo_configs_dao.g.dart';

@DriftAccessor(tables: [PhotoConfigs])
class PhotoConfigsDao extends DatabaseAccessor<AppDatabase> with _$PhotoConfigsDaoMixin implements BaseDao<PhotoConfigs, int> {
  PhotoConfigsDao(AppDatabase db) : super(db);

  @override
  Future<int> insert(PhotoConfigsCompanion data) {
    return into(photoConfigs).insert(data);
  }

  @override
  Future<List<PhotoConfigsData>> findAll() {
    return select(photoConfigs).get();
  }

  @override
  Future<PhotoConfigsData?> findById(int id) {
    return (select(photoConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<PhotoConfigsData?> findByRecordType(int recordTypeId) {
    return (select(photoConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).getSingleOrNull();
  }

  @override
  Future<int> update(PhotoConfigsCompanion data) {
    return (update(photoConfigs)..where((tbl) => tbl.id.equals(data.id.value))).write(data);
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(photoConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteByRecordType(int recordTypeId) {
    return (delete(photoConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).go();
  }
  
  Future<int> deleteAll() {
    return delete(photoConfigs).go();
  }
}