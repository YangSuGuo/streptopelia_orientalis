import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/record_value.dart';
import 'base_dao.dart';

part 'record_value_dao.g.dart';

@DriftAccessor(tables: [RecordValues])
class RecordValueDao extends DatabaseAccessor<AppDatabase> implements BaseDao<RecordValue> {
  RecordValueDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(RecordValue entity) async {
    return into(recordValues).insert(RecordValuesCompanion.insert(
      recordId: entity.recordId,
      fieldKey: entity.fieldKey,
      fieldValue: entity.fieldValue,
      valueType: entity.valueType,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(RecordValue entity) async {
    return update(recordValues).replace(RecordValuesCompanion(
      id: Value(entity.id!),
      recordId: Value(entity.recordId),
      fieldKey: Value(entity.fieldKey),
      fieldValue: Value(entity.fieldValue),
      valueType: Value(entity.valueType),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(recordValues)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<RecordValue>> findAll() async {
    return select(recordValues).get().then((rows) => rows.map((row) => RecordValue(
      id: row.id,
      recordId: row.recordId,
      fieldKey: row.fieldKey,
      fieldValue: row.fieldValue,
      valueType: row.valueType,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<RecordValue?> findById(int id) async {
    final result = await (select(recordValues)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return RecordValue(
      id: result.id,
      recordId: result.recordId,
      fieldKey: result.fieldKey,
      fieldValue: result.fieldValue,
      valueType: result.valueType,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}