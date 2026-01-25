import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/numeric_field.dart';

part 'numeric_field_dao.g.dart';

@DriftAccessor(tables: [NumericField])
class NumericFieldDao extends DatabaseAccessor<AppDatabase> with _$NumericFieldDaoMixin {
  NumericFieldDao(super.db);

  Future<int> insertNumericField(Insertable<NumericField> numericField) {
    return into(numericField).insert(numericField);
  }

  Future<List<NumericField>> getAllNumericFields() {
    return select(numericField).get();
  }

  Future<List<NumericField>> getNumericFieldsByProject(int projectId) {
    return (select(numericField)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }

  Future<NumericField?> getNumericFieldById(int id) {
    return (select(numericField)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> updateNumericField(NumericField entry) {
    return (update(numericField)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteNumericField(int id) {
    return (delete(numericField)..where((tbl) => tbl.id.equals(id))).go();
  }
}