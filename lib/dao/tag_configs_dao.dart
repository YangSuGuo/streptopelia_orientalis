import 'package:drift/drift.dart';
import '../data/database.dart';
import '../data/drift/tables/tag_configs.dart';
import 'base_dao.dart';

part 'tag_configs_dao.g.dart';

@DriftAccessor(tables: [TagConfigs])
class TagConfigsDao extends DatabaseAccessor<AppDatabase> with _$TagConfigsDaoMixin implements BaseDao<TagConfigs, int, TagConfigsCompanion> {
  TagConfigsDao(AppDatabase db) : super(db);

  @override
  AppDatabase get db => this.db;

  @override
  Future<int> insert(TagConfigsCompanion data) {
    return into(tagConfigs).insert(data);
  }

  @override
  Future<List<Map<String, dynamic>>> findAllRaw() {
    return select(tagConfigs).get().then((list) => list.map((item) => item.toJson()).toList());
  }

  @override
  Future<List<TagConfigsData>> findAll() {
    return select(tagConfigs).get();
  }

  @override
  Future<TagConfigsData?> findById(int id) {
    return (select(tagConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<TagConfigsData>> findByRecordType(int recordTypeId) {
    return (select(tagConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).get();
  }

  Future<List<TagConfigsData>> findPresetTagsByRecordType(int recordTypeId) {
    return (select(tagConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId) & tbl.isPreset.equals(true)))
        .get();
  }

  Future<List<String>> findPresetTagNamesByRecordType(int recordTypeId) async {
    final presetTags = await findPresetTagsByRecordType(recordTypeId);
    return presetTags.map((tag) => tag.tagName).toList();
  }

  @override
  Future<int> update(int id, TagConfigsCompanion data) {
    return (update(tagConfigs)..where((tbl) => tbl.id.equals(id))).write(data);
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(tagConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteByRecordType(int recordTypeId) {
    return (delete(tagConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).go();
  }

  Future<int> deletePresetTagsByRecordType(int recordTypeId) {
    return (delete(tagConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId) & tbl.isPreset.equals(true)))
        .go();
  }
  
  Future<int> deleteAll() {
    return delete(tagConfigs).go();
  }
}