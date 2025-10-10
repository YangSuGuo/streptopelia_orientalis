import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:streptopelia_orientalis/data/drift/dao/record_dao.dart';
import 'package:streptopelia_orientalis/data/drift/dao/record_type_dao.dart';
import 'package:streptopelia_orientalis/data/drift/tables/categories.dart';
import 'package:streptopelia_orientalis/data/drift/tables/custom_fields.dart';
import 'package:streptopelia_orientalis/data/drift/tables/field_values.dart';
import 'package:streptopelia_orientalis/data/drift/tables/media_files.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_types.dart' hide JsonTypeConverter;
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';
import 'package:streptopelia_orientalis/data/drift/tables/user_settings.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    RecordTypes,
    Records,
    MediaFiles,
    Categories,
    CustomFields,
    FieldValues,
    UserSettings,
  ],
  daos: [
    // DAOs will be added here
    RecordDao,
    RecordTypeDao
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