import 'package:drift/drift.dart';
import '../data/database.dart';
import '../data/drift/tables/record_type_configs.dart';
import 'base_dao.dart';

part 'record_type_configs_dao.g.dart';

@DriftAccessor(tables: [RecordTypeConfigs])
class RecordTypeConfigsDao extends DatabaseAccessor<AppDatabase> with _$RecordTypeConfigsDaoMixin implements BaseDao<RecordTypeConfigs, int> {
  RecordTypeConfigsDao(AppDatabase db) : super(db);

  @override
  Future<int> insert(RecordTypeConfigsCompanion data) {
    return into(recordTypeConfigs).insert(data);
  }

  @override
  Future<List<RecordTypeConfigsData>> findAll() {
    return select(recordTypeConfigs).get();
  }

  @override
  Future<RecordTypeConfigsData?> findById(int id) {
    return (select(recordTypeConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<RecordTypeConfigsData>> findByRecordType(int recordTypeId) {
    return (select(recordTypeConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).get();
  }

  Future<RecordTypeConfigsData?> findByRecordTypeAndKey(int recordTypeId, String configKey) {
    return (select(recordTypeConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId) & tbl.configKey.equals(configKey)))
        .getSingleOrNull();
  }

  Future<String?> getConfigValue(int recordTypeId, String configKey) async {
    final config = await findByRecordTypeAndKey(recordTypeId, configKey);
    return config?.configValue;
  }

  @override
  Future<int> update(RecordTypeConfigsCompanion data) {
    return (update(recordTypeConfigs)..where((tbl) => tbl.id.equals(data.id.value))).write(data);
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(recordTypeConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteByRecordType(int recordTypeId) {
    return (delete(recordTypeConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).go();
  }

  Future<int> deleteByRecordTypeAndKey(int recordTypeId, String configKey) {
    return (delete(recordTypeConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId) & tbl.configKey.equals(configKey)))
        .go();
  }
  
  Future<int> deleteAll() {
    return delete(recordTypeConfigs).go();
  }
}