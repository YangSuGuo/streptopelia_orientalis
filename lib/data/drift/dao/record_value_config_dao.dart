import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/record_value_config.dart';
import 'base_dao.dart';

part 'record_value_config_dao.g.dart';

@DriftAccessor(tables: [RecordValueConfigs])
class RecordValueConfigDao extends DatabaseAccessor<AppDatabase> implements BaseDao<RecordValueConfig> {
  RecordValueConfigDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(RecordValueConfig entity) async {
    return into(recordValueConfigs).insert(RecordValueConfigsCompanion.insert(
      recordValueId: entity.recordValueId,
      configKey: entity.configKey,
      configValue: entity.configValue,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(RecordValueConfig entity) async {
    return update(recordValueConfigs).replace(RecordValueConfigsCompanion(
      id: Value(entity.id!),
      recordValueId: Value(entity.recordValueId),
      configKey: Value(entity.configKey),
      configValue: Value(entity.configValue),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(recordValueConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<RecordValueConfig>> findAll() async {
    return select(recordValueConfigs).get().then((rows) => rows.map((row) => RecordValueConfig(
      id: row.id,
      recordValueId: row.recordValueId,
      configKey: row.configKey,
      configValue: row.configValue,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<RecordValueConfig?> findById(int id) async {
    final result = await (select(recordValueConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return RecordValueConfig(
      id: result.id,
      recordValueId: result.recordValueId,
      configKey: result.configKey,
      configValue: result.configValue,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}