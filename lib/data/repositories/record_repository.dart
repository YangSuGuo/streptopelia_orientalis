import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/dao/record_dao.dart';
import 'package:streptopelia_orientalis/data/drift/entities/record_entity.dart';

part 'record_repository.g.dart';

abstract class RecordRepository {
  Future<int> createRecord(RecordEntity record);
  Future<void> updateRecord(int id, RecordEntity record);
  Future<void> deleteRecord(int id);
  Future<List<RecordEntity>> getAllRecords();
  Future<List<RecordEntity>> getRecordsByType(int recordTypeId);
  Stream<List<RecordEntity>> watchRecordsByType(int recordTypeId);
}

class RecordRepositoryImpl implements RecordRepository {
  final RecordDao _recordDao;

  RecordRepositoryImpl(this._recordDao);

  @override
  Future<int> createRecord(RecordEntity record) async {
    // Implementation
    return 0;
  }

  @override
  Future<void> updateRecord(int id, RecordEntity record) async {
    // Implementation
  }

  @override
  Future<void> deleteRecord(int id) async {
    // Implementation
  }

  @override
  Future<List<RecordEntity>> getAllRecords() async {
    // Implementation
    return [];
  }

  @override
  Future<List<RecordEntity>> getRecordsByType(int recordTypeId) async {
    // Implementation
    return [];
  }

  @override
  Stream<List<RecordEntity>> watchRecordsByType(int recordTypeId) {
    // Implementation
    return Stream.value([]);
  }
}

@riverpod
RecordRepository recordRepository(Ref ref) {
  final recordDao = ref.watch(recordDaoProvider);
  return RecordRepositoryImpl(recordDao);
}
