import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/record_step_config.dart';
import 'base_dao.dart';

part 'record_step_config_dao.g.dart';

@DriftAccessor(tables: [RecordStepConfigs])
class RecordStepConfigDao extends DatabaseAccessor<AppDatabase> implements BaseDao<RecordStepConfig> {
  RecordStepConfigDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(RecordStepConfig entity) async {
    return into(recordStepConfigs).insert(RecordStepConfigsCompanion.insert(
      recordStepId: entity.recordStepId,
      configKey: entity.configKey,
      configValue: entity.configValue,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(RecordStepConfig entity) async {
    return update(recordStepConfigs).replace(RecordStepConfigsCompanion(
      id: Value(entity.id!),
      recordStepId: Value(entity.recordStepId),
      configKey: Value(entity.configKey),
      configValue: Value(entity.configValue),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(recordStepConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<RecordStepConfig>> findAll() async {
    return select(recordStepConfigs).get().then((rows) => rows.map((row) => RecordStepConfig(
      id: row.id,
      recordStepId: row.recordStepId,
      configKey: row.configKey,
      configValue: row.configValue,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<RecordStepConfig?> findById(int id) async {
    final result = await (select(recordStepConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return RecordStepConfig(
      id: result.id,
      recordStepId: result.recordStepId,
      configKey: result.configKey,
      configValue: result.configValue,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}