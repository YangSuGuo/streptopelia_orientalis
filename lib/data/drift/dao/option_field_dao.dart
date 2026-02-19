import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/option_field.dart';

part 'option_field_dao.g.dart';

@DriftAccessor(tables: [OptionField])
class OptionFieldDao extends DatabaseAccessor<AppDatabase> with _$OptionFieldDaoMixin {
  OptionFieldDao(super.db);

  Future<List<OptionFieldData>> getAllOptionFields() async {
    return await select(db.optionField).get();
  }

  Future<OptionFieldData?> getOptionFieldById(int id) async {
    return await (select(db.optionField)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertOptionField(OptionFieldCompanion optionField) async {
    return await into(db.optionField).insert(optionField);
  }

  Future<void> updateOptionField(OptionFieldCompanion optionField) async {
    await (update(db.optionField)..where((tbl) => tbl.id.equals(optionField.id.value))).write(optionField);
  }

  Future<void> deleteOptionField(int id) async {
    await (delete(db.optionField)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllOptionFields() async {
    await delete(db.optionField).go();
  }
}
