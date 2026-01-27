import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/option_field.dart';
import '../tables/option_field.dart' as t;

part 'option_field_dao.g.dart';

@DriftAccessor(tables: [t.OptionField])
class OptionFieldDao extends DatabaseAccessor<AppDatabase> with _$OptionFieldDaoMixin {
  OptionFieldDao(AppDatabase db) : super(db);

  Future<List<OptionField>> getAllOptionFields() async {
    return await select(t.OptionField).get();
  }

  Future<OptionField?> getOptionFieldById(int id) async {
    return await (select(t.OptionField)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertOptionField(Insertable<OptionField> optionField) async {
    return await into(t.OptionField).insert(optionField);
  }

  Future<void> updateOptionField(OptionField optionField) async {
    return await (update(t.OptionField)..where((tbl) => tbl.id.equals(optionField.id!))).write(optionField);
  }

  Future<void> deleteOptionField(int id) async {
    await (delete(t.OptionField)..where((tbl) => tbl.id.equals(id)));
  }

  Future<void> deleteAllOptionFields() async {
    await delete(t.OptionField).go();
  }

  Future<List<OptionField>> getOptionFieldsByProject(int projectId) async {
    return await (select(t.OptionField)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }
}