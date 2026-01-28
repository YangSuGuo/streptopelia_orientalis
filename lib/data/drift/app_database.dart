import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:streptopelia_orientalis/data/drift/tables/category.dart';
import 'package:streptopelia_orientalis/data/drift/tables/location_record.dart';
import 'package:streptopelia_orientalis/data/drift/tables/media_record.dart';
import 'package:streptopelia_orientalis/data/drift/tables/numeric_field.dart';
import 'package:streptopelia_orientalis/data/drift/tables/option_field.dart';
import 'package:streptopelia_orientalis/data/drift/tables/project.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_numeric_value.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_option_selection.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_step.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_tag.dart';
import 'package:streptopelia_orientalis/data/drift/tables/step_definition.dart';
import 'package:streptopelia_orientalis/data/drift/tables/tag.dart';
import 'package:streptopelia_orientalis/data/drift/dao/category_dao.dart';
import 'package:streptopelia_orientalis/data/drift/dao/project_dao.dart';
import 'package:streptopelia_orientalis/data/drift/dao/records_dao.dart';
import 'package:streptopelia_orientalis/data/drift/dao/step_definition_dao.dart';
import 'package:streptopelia_orientalis/data/drift/dao/record_step_dao.dart';
import 'package:streptopelia_orientalis/data/drift/dao/tag_dao.dart';
import 'package:streptopelia_orientalis/data/drift/dao/record_tag_dao.dart';
import 'package:streptopelia_orientalis/data/drift/dao/numeric_field_dao.dart';
import 'package:streptopelia_orientalis/data/drift/dao/record_numeric_value_dao.dart';
import 'package:streptopelia_orientalis/data/drift/dao/option_field_dao.dart';
import 'package:streptopelia_orientalis/data/drift/dao/record_option_selection_dao.dart';
import 'package:streptopelia_orientalis/data/drift/dao/location_record_dao.dart';
import 'package:streptopelia_orientalis/data/drift/dao/media_record_dao.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    Category,
    Project,
    Records,
    StepDefinition,
    RecordStep,
    Tag,
    RecordTag,
    NumericField,
    RecordNumericValue,
    OptionField,
    RecordOptionSelection,
    LocationRecord,
    MediaRecord,
  ],
  daos: [
    CategoryDao,
    ProjectDao,
    RecordsDao,
    StepDefinitionDao,
    RecordStepDao,
    TagDao,
    RecordTagDao,
    NumericFieldDao,
    RecordNumericValueDao,
    OptionFieldDao,
    RecordOptionSelectionDao,
    LocationRecordDao,
    MediaRecordDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {
      // Handle schema upgrades
    },
  );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
    return NativeDatabase(file, logStatements: true);
  });
}
