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
      recordTypeId: entity.recordTypeId,
      fieldName: entity.fieldName,
      fieldLabel: entity.fieldLabel,
      fieldType: entity.fieldType,
      unit: entity.unit,
      minValue: entity.minValue,
      maxValue: entity.maxValue,
      defaultValue: entity.defaultValue,
      selectionOptions: entity.selectionOptions,
      isRequired: entity.isRequired,
      createdAt: entity.createdAt,
    ));
  }

  @override
  Future<int> update(RecordValueConfig entity) async {
    return update(recordValueConfigs).replace(RecordValueConfigsCompanion(
      id: Value(entity.id!),
      recordTypeId: Value(entity.recordTypeId),
      fieldName: Value(entity.fieldName),
      fieldLabel: Value(entity.fieldLabel),
      fieldType: Value(entity.fieldType),
      unit: Value(entity.unit),
      minValue: Value(entity.minValue),
      maxValue: Value(entity.maxValue),
      defaultValue: Value(entity.defaultValue),
      selectionOptions: Value(entity.selectionOptions),
      isRequired: Value(entity.isRequired),
      createdAt: Value(entity.createdAt!),
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
      recordTypeId: row.recordTypeId,
      fieldName: row.fieldName,
      fieldLabel: row.fieldLabel,
      fieldType: row.fieldType,
      unit: row.unit,
      minValue: row.minValue,
      maxValue: row.maxValue,
      defaultValue: row.defaultValue,
      selectionOptions: row.selectionOptions,
      isRequired: row.isRequired,
      createdAt: row.createdAt,
    )).toList());
  }

  @override
  Future<RecordValueConfig?> findById(int id) async {
    final result = await (select(recordValueConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return RecordValueConfig(
      id: result.id,
      recordTypeId: result.recordTypeId,
      fieldName: result.fieldName,
      fieldLabel: result.fieldLabel,
      fieldType: result.fieldType,
      unit: result.unit,
      minValue: result.minValue,
      maxValue: result.maxValue,
      defaultValue: result.defaultValue,
      selectionOptions: result.selectionOptions,
      isRequired: result.isRequired,
      createdAt: result.createdAt,
    );
  }
}