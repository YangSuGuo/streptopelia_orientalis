import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';

part 'drift_provider.g.dart';

@riverpod
AppDatabase database(Ref ref) {
  final database = AppDatabase();
  ref.onDispose(database.close);
  return database;
}
