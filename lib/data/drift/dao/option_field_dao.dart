import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/option_field.dart';

part 'option_field_dao.g.dart';

@DriftAccessor(tables: [OptionField])
class OptionFieldDao extends DatabaseAccessor<AppDatabase> with _$OptionFieldDaoMixin {
  OptionFieldDao(super.db);

  Future<int> insertOptionField(Insertable<OptionField> optionField) {
    return into(optionField).insert(optionField);
  }

  Future<List<OptionField>> getAllOptionFields() {
    return select(optionField).get();
  }

  Future<List<OptionField>> getOptionFieldsByProject(int projectId) {
    return (select(optionField)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }

  Future<OptionField?> getOptionFieldById(int id) {
    return (select(optionField)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> updateOptionField(OptionField entry) {
    return (update(optionField)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteOptionField(int id) {
    return (delete(optionField)..where((tbl) => tbl.id.equals(id))).go();
  }
}