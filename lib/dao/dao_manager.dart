import '../data/database.dart';
import 'records_dao.dart';
import 'record_types_dao.dart';
import 'categories_dao.dart';
import 'record_photos_dao.dart';
import 'record_locations_dao.dart';
import 'record_tags_dao.dart';
import 'record_steps_dao.dart';
import 'record_values_dao.dart';
import 'location_configs_dao.dart';
import 'photo_configs_dao.dart';
import 'record_step_configs_dao.dart';
import 'record_type_configs_dao.dart';
import 'record_value_configs_dao.dart';
import 'tag_configs_dao.dart';

class DaoManager {
  final AppDatabase _db;

  late final RecordsDao recordsDao;
  late final RecordTypesDao recordTypesDao;
  late final CategoriesDao categoriesDao;
  late final RecordPhotosDao recordPhotosDao;
  late final RecordLocationsDao recordLocationsDao;
  late final RecordTagsDao recordTagsDao;
  late final RecordStepsDao recordStepsDao;
  late final RecordValuesDao recordValuesDao;
  late final LocationConfigsDao locationConfigsDao;
  late final PhotoConfigsDao photoConfigsDao;
  late final RecordStepConfigsDao recordStepConfigsDao;
  late final RecordTypeConfigsDao recordTypeConfigsDao;
  late final RecordValueConfigsDao recordValueConfigsDao;
  late final TagConfigsDao tagConfigsDao;

  DaoManager(this._db) {
    recordsDao = RecordsDao(_db);
    recordTypesDao = RecordTypesDao(_db);
    categoriesDao = CategoriesDao(_db);
    recordPhotosDao = RecordPhotosDao(_db);
    recordLocationsDao = RecordLocationsDao(_db);
    recordTagsDao = RecordTagsDao(_db);
    recordStepsDao = RecordStepsDao(_db);
    recordValuesDao = RecordValuesDao(_db);
    locationConfigsDao = LocationConfigsDao(_db);
    photoConfigsDao = PhotoConfigsDao(_db);
    recordStepConfigsDao = RecordStepConfigsDao(_db);
    recordTypeConfigsDao = RecordTypeConfigsDao(_db);
    recordValueConfigsDao = RecordValueConfigsDao(_db);
    tagConfigsDao = TagConfigsDao(_db);
  }

  AppDatabase get db => _db;
}