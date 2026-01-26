import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/option_field.dart';

part 'option_field_dao.g.dart';

@DriftAccessor(tables: [OptionFieldTable])
class OptionFieldDao extends DatabaseAccessor<AppDatabase> with _$OptionFieldDaoMixin {
  OptionFieldDao(AppDatabase db) : super(db);

  Future<List<OptionField>> getAllOptionFields() async {
    final optionFields = await select(optionFieldTable).get();
    return optionFields.map((of) => OptionField(
      id: of.id,
      projectId: of.projectId,
      title: of.title,
      optionCount: of.optionCount,
      maxSelections: of.maxSelections,
      optionsList: of.optionsList,
    )).toList();
  }

  Future<OptionField?> getOptionFieldById(int id) async {
    final optionField = await (select(optionFieldTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (optionField == null) return null;
    return OptionField(
      id: optionField.id,
      projectId: optionField.projectId,
      title: optionField.title,
      optionCount: optionField.optionCount,
      maxSelections: optionField.maxSelections,
      optionsList: optionField.optionsList,
    );
  }

  Future<int> insertOptionField(OptionField optionField) async {
    return await into(optionFieldTable).insert(OptionFieldTableCompanion.insert(
      projectId: optionField.projectId,
      title: optionField.title,
      optionCount: optionField.optionCount,
      maxSelections: optionField.maxSelections,
      optionsList: optionField.optionsList,
    ));
  }

  Future<void> updateOptionField(OptionField optionField) async {
    await (update(optionFieldTable)..where((tbl) => tbl.id.equals(optionField.id!))).write(
      OptionFieldTableCompanion(
        projectId: Value(optionField.projectId),
        title: Value(optionField.title),
        optionCount: Value(optionField.optionCount),
        maxSelections: Value(optionField.maxSelections),
        optionsList: Value(optionField.optionsList),
      ),
    );
  }

  Future<void> deleteOptionField(int id) async {
    await (delete(optionFieldTable)..where((tbl) => tbl.id.equals(id))).go();
  }
}