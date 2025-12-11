import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/dao/record_type_dao.dart';
import 'package:streptopelia_orientalis/data/drift/entities/record_entity.dart';

part 'record_type_repository.g.dart';

abstract class RecordTypeRepository {
  Stream<List<RecordTypeEntity>> watchRecordTypes();
  Future<void> addRecordType(RecordTypeEntity recordType);
  Future<void> updateRecordType(int id, RecordTypeEntity recordType);
  Future<void> deleteRecordType(int id);
  Future<List<RecordTypeEntity>> getAllRecordTypes();
}

class DriftRecordTypeRepository implements RecordTypeRepository {
  DriftRecordTypeRepository(this._recordTypeDao);

  final RecordTypeDao _recordTypeDao;

  @override
  Future<void> addRecordType(RecordTypeEntity recordType) {
    return _recordTypeDao.insertRecordType(recordType);
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
  Future<void> updateRecordType(int id, RecordTypeEntity recordType) {
    return _recordTypeDao.updateRecordType(id, recordType);
  }

  @override
  Stream<List<RecordTypeEntity>> watchRecordTypes() {
    return _recordTypeDao.watchAllRecordTypes();
  }
}

@riverpod
RecordTypeRepository recordTypeRepository(Ref ref) {
  final recordTypeDao = ref.read(recordTypeDaoProvider);
  return DriftRecordTypeRepository(recordTypeDao);
}
