import 'package:drift/drift.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [])
class AppDatabase extends AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}