import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/numeric_field.dart';

part 'numeric_field_dao.g.dart';

@DriftAccessor(tables: [NumericField])
class NumericFieldDao extends DatabaseAccessor<AppDatabase> with _$NumericFieldDaoMixin {
  NumericFieldDao(super.db);

  Future<List<NumericFieldData>> getAllNumericFields() async {
    return await select(db.numericField).get();
  }

  Future<NumericFieldData?> getNumericFieldById(int id) async {
    return await (select(db.numericField)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertNumericField(Insertable<NumericFieldData> numericField) async {
    return await into(db.numericField).insert(numericField);
  }

  Future<void> updateNumericField(NumericFieldData numericField) async {
    await (update(db.numericField)..where((tbl) => tbl.id.equals(numericField.id))).write(numericField);
  }

  Future<void> deleteNumericField(int id) async {
    await (delete(db.numericField)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllNumericFields() async {
    await delete(db.numericField).go();
  }
}