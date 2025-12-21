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
      recordTypeId: entity.recordTypeId,
      stepName: entity.stepName,
      stepDescription: entity.stepDescription,
      stepOrder: entity.stepOrder,
      required: entity.required,
      allowSkip: entity.allowSkip,
      createdAt: entity.createdAt,
    ));
  }

  @override
  Future<int> update(RecordStepConfig entity) async {
    return update(recordStepConfigs).replace(RecordStepConfigsCompanion(
      id: Value(entity.id!),
      recordTypeId: Value(entity.recordTypeId),
      stepName: Value(entity.stepName),
      stepDescription: Value(entity.stepDescription),
      stepOrder: Value(entity.stepOrder),
      required: Value(entity.required),
      allowSkip: Value(entity.allowSkip),
      createdAt: Value(entity.createdAt!),
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
      recordTypeId: row.recordTypeId,
      stepName: row.stepName,
      stepDescription: row.stepDescription,
      stepOrder: row.stepOrder,
      required: row.required,
      allowSkip: row.allowSkip,
      createdAt: row.createdAt,
    )).toList());
  }

  @override
  Future<RecordStepConfig?> findById(int id) async {
    final result = await (select(recordStepConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return RecordStepConfig(
      id: result.id,
      recordTypeId: result.recordTypeId,
      stepName: result.stepName,
      stepDescription: result.stepDescription,
      stepOrder: result.stepOrder,
      required: result.required,
      allowSkip: result.allowSkip,
      createdAt: result.createdAt,
    );
  }
}