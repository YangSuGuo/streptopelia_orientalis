import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/record_types.dart';

part 'record_type_dao.g.dart';

@DriftAccessor(tables: [RecordTypes])
class RecordTypeDao extends DatabaseAccessor<AppDatabase> with _$RecordTypeDaoMixin {
  RecordTypeDao(super.db);

}