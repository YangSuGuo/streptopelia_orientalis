import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/numeric_field.dart';

part 'numeric_field_dao.g.dart';

@DriftAccessor(tables: [NumericFieldTable])
class NumericFieldDao extends DatabaseAccessor<AppDatabase> with _$NumericFieldDaoMixin {
  NumericFieldDao(AppDatabase db) : super(db);

  Future<List<NumericField>> getAllNumericFields() async {
    final numericFields = await select(numericFieldTable).get();
    return numericFields.map((nf) => NumericField(
      id: nf.id,
      projectId: nf.projectId,
      title: nf.title,
      unit: nf.unit,
    )).toList();
  }

  Future<NumericField?> getNumericFieldById(int id) async {
    final numericField = await (select(numericFieldTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (numericField == null) return null;
    return NumericField(
      id: numericField.id,
      projectId: numericField.projectId,
      title: numericField.title,
      unit: numericField.unit,
    );
  }

  Future<int> insertNumericField(NumericField numericField) async {
    return await into(numericFieldTable).insert(NumericFieldTableCompanion.insert(
      projectId: numericField.projectId,
      title: numericField.title,
      unit: numericField.unit,
    ));
  }

  Future<void> updateNumericField(NumericField numericField) async {
    await (update(numericFieldTable)..where((tbl) => tbl.id.equals(numericField.id!))).write(
      NumericFieldTableCompanion(
        projectId: Value(numericField.projectId),
        title: Value(numericField.title),
        unit: Value(numericField.unit),
      ),
    );
  }

  Future<void> deleteNumericField(int id) async {
    await (delete(numericFieldTable)..where((tbl) => tbl.id.equals(id))).go();
  }
}