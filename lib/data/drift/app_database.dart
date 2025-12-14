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
    RecordTypes,
    Records,
    MediaFiles,
    Categories,
    CustomFields,
    UserSettings,
    RecordValues,
    RecordSteps,
    RecordPhotos,
    RecordLocations,
    RecordTags,
    CategoryRecords,
    RecordTypeConfigs,
    RecordStepConfigs,
    RecordValueConfigs,
    TagConfig,
    PhotoConfig,
    LocationConfig,
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
  int get schemaVersion => 2; // Incremented version for database schema update

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {
      // Handle schema upgrades
      if (from == 1 && to == 2) {
        // Migrate from schema version 1 to 2
        await m.createTable(RecordValues());
        await m.createTable(RecordSteps());
        await m.createTable(RecordPhotos());
        await m.createTable(RecordLocations());
        await m.createTable(RecordTags());
        await m.createTable(CategoryRecords());
        await m.createTable(RecordTypeConfigs());
        await m.createTable(RecordStepConfigs());
        await m.createTable(RecordValueConfigs());
        await m.createTable(TagConfig());
        await m.createTable(PhotoConfig());
        await m.createTable(LocationConfig());
        
        // Update existing tables
        await m.addColumn(Categories(), CategoriesCompanion(
          icon: const Value(null),
          updatedAt: const Value(DateTime.now()),
        ));
        await m.addColumn(RecordTypes(), RecordTypesCompanion(
          isEnabled: const Value(true),
          sortOrder: const Value(0),
          configJson: const Value(null),
          updatedAt: const Value(DateTime.now()),
        ));
        await m.addColumn(Records(), RecordsCompanion(
          title: const Value(null),
          durationSeconds: const Value(null),
          locationName: const Value(null),
          latitude: const Value(null),
          longitude: const Value(null),
          accuracy: const Value(null),
          status: const Value('draft'),
          tagsJson: const Value(null),
          metadataJson: const Value(null),
          updatedAt: const Value(DateTime.now()),
        ));
      }
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
