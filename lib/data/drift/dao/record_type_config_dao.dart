import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/record_type_config.dart';
import 'base_dao.dart';

part 'record_type_config_dao.g.dart';

@DriftAccessor(tables: [RecordTypeConfigs])
class RecordTypeConfigDao extends DatabaseAccessor<AppDatabase> implements BaseDao<RecordTypeConfig> {
  RecordTypeConfigDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(RecordTypeConfig entity) async {
    return into(recordTypeConfigs).insert(RecordTypeConfigsCompanion.insert(
      recordTypeId: entity.recordTypeId,
      configKey: entity.configKey,
      configValue: entity.configValue,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(RecordTypeConfig entity) async {
    return update(recordTypeConfigs).replace(RecordTypeConfigsCompanion(
      id: Value(entity.id!),
      recordTypeId: Value(entity.recordTypeId),
      configKey: Value(entity.configKey),
      configValue: Value(entity.configValue),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(recordTypeConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<RecordTypeConfig>> findAll() async {
    return select(recordTypeConfigs).get().then((rows) => rows.map((row) => RecordTypeConfig(
      id: row.id,
      recordTypeId: row.recordTypeId,
      configKey: row.configKey,
      configValue: row.configValue,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<RecordTypeConfig?> findById(int id) async {
    final result = await (select(recordTypeConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return RecordTypeConfig(
      id: result.id,
      recordTypeId: result.recordTypeId,
      configKey: result.configKey,
      configValue: result.configValue,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}