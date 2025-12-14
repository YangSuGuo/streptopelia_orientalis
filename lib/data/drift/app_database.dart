import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:streptopelia_orientalis/data/drift/dao/record_dao.dart';
import 'package:streptopelia_orientalis/data/drift/dao/record_type_dao.dart';
import 'package:streptopelia_orientalis/data/drift/tables/categories.dart';
import 'package:streptopelia_orientalis/data/drift/tables/category_records.dart';
import 'package:streptopelia_orientalis/data/drift/tables/custom_fields.dart';
import 'package:streptopelia_orientalis/data/drift/tables/location_config.dart';
import 'package:streptopelia_orientalis/data/drift/tables/media_files.dart';
import 'package:streptopelia_orientalis/data/drift/tables/photo_config.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_locations.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_photos.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_step_configs.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_steps.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_tags.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_type_configs.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_types.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_values.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_value_configs.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';
import 'package:streptopelia_orientalis/data/drift/tables/tag_config.dart';
import 'package:streptopelia_orientalis/data/drift/tables/user_settings.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [

  ],
  daos: [
    // MediaFileDao,
    RecordDao,
    RecordTypeDao
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1; // Incremented version for database schema update

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {

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
