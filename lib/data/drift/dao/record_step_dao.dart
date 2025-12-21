import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/record_step.dart';
import 'base_dao.dart';

part 'record_step_dao.g.dart';

@DriftAccessor(tables: [RecordSteps])
class RecordStepDao extends DatabaseAccessor<AppDatabase> implements BaseDao<RecordStep> {
  RecordStepDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(RecordStep entity) async {
    return into(recordSteps).insert(RecordStepsCompanion.insert(
      recordId: entity.recordId,
      stepIndex: entity.stepIndex,
      stepTitle: entity.stepTitle,
      stepContent: entity.stepContent,
      stepStatus: entity.stepStatus,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(RecordStep entity) async {
    return update(recordSteps).replace(RecordStepsCompanion(
      id: Value(entity.id!),
      recordId: Value(entity.recordId),
      stepIndex: Value(entity.stepIndex),
      stepTitle: Value(entity.stepTitle),
      stepContent: Value(entity.stepContent),
      stepStatus: Value(entity.stepStatus),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(recordSteps)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<RecordStep>> findAll() async {
    return select(recordSteps).get().then((rows) => rows.map((row) => RecordStep(
      id: row.id,
      recordId: row.recordId,
      stepIndex: row.stepIndex,
      stepTitle: row.stepTitle,
      stepContent: row.stepContent,
      stepStatus: row.stepStatus,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<RecordStep?> findById(int id) async {
    final result = await (select(recordSteps)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return RecordStep(
      id: result.id,
      recordId: result.recordId,
      stepIndex: result.stepIndex,
      stepTitle: result.stepTitle,
      stepContent: result.stepContent,
      stepStatus: result.stepStatus,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}