import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:streptopelia_orientalis/data/drift/tables/categories.dart';
import 'package:streptopelia_orientalis/data/drift/tables/category_records.dart';
import 'package:streptopelia_orientalis/data/drift/tables/location_configs.dart';
import 'package:streptopelia_orientalis/data/drift/tables/photo_configs.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_locations.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_photos.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_step_configs.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_steps.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_tags.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_type_configs.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_types.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_value_configs.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_values.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';
import 'package:streptopelia_orientalis/data/drift/tables/tag_configs.dart';

import 'dao/category_dao.dart';
import 'dao/record_dao.dart';
import 'dao/record_photo_dao.dart';
import 'dao/record_step_dao.dart';
import 'dao/record_type_dao.dart';
import 'dao/record_value_dao.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    Categories,
    RecordTypes,
    Records,
    RecordValues,
    RecordSteps,
    RecordPhotos,
    RecordLocations,
    RecordTags,
    CategoryRecords,
    RecordTypeConfigs,
    RecordStepConfigs,
    RecordValueConfigs,
    TagConfigs,
    PhotoConfigs,
    LocationConfigs,
  ],
  daos: [
    CategoryDao,
    RecordTypeDao,
    RecordDao,
    RecordValueDao,
    RecordStepDao,
    RecordPhotoDao,
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
