import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/photo_configs.dart';
import 'base_dao.dart';

part 'photo_configs_dao.g.dart';

@DriftAccessor(tables: [PhotoConfigs])
class PhotoConfigsDao extends DatabaseAccessor<AppDatabase> with _$PhotoConfigsDaoMixin implements BaseDao<PhotoConfigs, int, PhotoConfigsCompanion> {
  PhotoConfigsDao(AppDatabase db) : super(db);

  @override
  AppDatabase get db => this.db;

  @override
  Future<int> insert(PhotoConfigsCompanion data) {
    return into(photoConfigs).insert(data);
  }

  @override
  Future<List<Map<String, dynamic>>> findAllRaw() {
    return select(photoConfigs).get().then((list) => list.map((item) => item.toJson()).toList());
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
  Future<int> update(int id, PhotoConfigsCompanion data) {
    return (update(photoConfigs)..where((tbl) => tbl.id.equals(id))).write(data);
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