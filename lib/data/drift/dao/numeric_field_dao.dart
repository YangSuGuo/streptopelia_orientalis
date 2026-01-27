import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/numeric_field.dart';
import '../tables/numeric_field.dart' as t;

part 'numeric_field_dao.g.dart';

@DriftAccessor(tables: [t.NumericField])
class NumericFieldDao extends DatabaseAccessor<AppDatabase> with _$NumericFieldDaoMixin {
  NumericFieldDao(AppDatabase db) : super(db);

  Future<List<NumericField>> getAllNumericFields() async {
    return await select(t.NumericField).get();
  }

  Future<NumericField?> getNumericFieldById(int id) async {
    return await (select(t.NumericField)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertNumericField(Insertable<NumericField> numericField) async {
    return await into(t.NumericField).insert(numericField);
  }

  Future<void> updateNumericField(NumericField numericField) async {
    return await (update(t.NumericField)..where((tbl) => tbl.id.equals(numericField.id!))).write(numericField);
  }

  Future<void> deleteNumericField(int id) async {
    await (delete(t.NumericField)..where((tbl) => tbl.id.equals(id)));
  }

  Future<void> deleteAllNumericFields() async {
    await delete(t.NumericField).go();
  }

  Future<List<NumericField>> getNumericFieldsByProject(int projectId) async {
    return await (select(t.NumericField)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }
}