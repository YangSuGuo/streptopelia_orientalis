import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_values.dart';

part 'record_value_dao.g.dart';

@DriftAccessor(tables: [RecordValues])
class RecordValueDao extends DatabaseAccessor<AppDatabase> with _$RecordValueDaoMixin {
  RecordValueDao(super.db);

}