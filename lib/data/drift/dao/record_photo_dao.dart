import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_photos.dart';

part 'record_photo_dao.g.dart';

@DriftAccessor(tables: [RecordPhotos])
class RecordPhotoDao extends DatabaseAccessor<AppDatabase> with _$RecordPhotoDaoMixin {
  RecordPhotoDao(super.db);

}