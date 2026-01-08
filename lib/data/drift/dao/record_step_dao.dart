import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_steps.dart';

part 'record_step_dao.g.dart';

@DriftAccessor(tables: [RecordSteps])
class RecordStepDao extends DatabaseAccessor<AppDatabase> with _$RecordStepDaoMixin {
  RecordStepDao(super.db);

}