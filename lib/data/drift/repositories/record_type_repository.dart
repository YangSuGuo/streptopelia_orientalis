import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/dao/record_type_dao.dart';
import 'package:streptopelia_orientalis/data/drift/entities/record_entity.dart';

part 'record_type_repository.g.dart';

abstract class RecordTypeRepository {
  Future<int> createRecordType(RecordTypeEntity recordType);
  Future<void> updateRecordType(int id, RecordTypeEntity recordType);
  Future<void> deleteRecordType(int id);
  Future<List<RecordTypeEntity>> getAllRecordTypes();
  Future<RecordTypeEntity?> getRecordTypeById(int id);
  Stream<List<RecordTypeEntity>> watchAllRecordTypes();
}

class RecordTypeRepositoryImpl implements RecordTypeRepository {
  final RecordTypeDao _recordTypeDao;

  RecordTypeRepositoryImpl(this._recordTypeDao);

  @override
  Future<int> createRecordType(RecordTypeEntity recordType) {
    return _recordTypeDao.insertRecordType(recordType);
  }

  @override
  Future<void> updateRecordType(int id, RecordTypeEntity recordType) {
    return _recordTypeDao.updateRecordType(id, recordType);
  }

  @override
  Future<void> deleteRecordType(int id) {
    return _recordTypeDao.deleteRecordType(id);
  }

  @override
  Future<List<RecordTypeEntity>> getAllRecordTypes() {
    return _recordTypeDao.getAllRecordTypes();
  }

  @override
  Future<RecordTypeEntity?> getRecordTypeById(int id) {
    return _recordTypeDao.getRecordTypeById(id);
  }

  @override
  Stream<List<RecordTypeEntity>> watchAllRecordTypes() {
    return _recordTypeDao.watchAllRecordTypes();
  }
}

@riverpod
RecordTypeRepository recordTypeRepository(Ref ref) {
  final recordTypeDao = ref.read(recordTypeDaoProvider);
  return RecordTypeRepositoryImpl(recordTypeDao);
}
