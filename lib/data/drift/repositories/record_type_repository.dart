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

class MockRecordTypeRepository implements RecordTypeRepository {
  MockRecordTypeRepository(this._recordTypes);

  final RecordTypeDao _recordTypes;
  final StreamController<List<RecordTypeEntity>> _controller = StreamController<List<RecordTypeEntity>>.broadcast();

  @override
  Future<void> addRecordType(RecordTypeEntity recordType) {
    return _recordTypes.insertRecordType(recordType);
  }

  @override
  Future<void> deleteRecordType(int id) {
    return _recordTypes.deleteRecordType(id);
  }

  @override
  Future<List<RecordTypeEntity>> getAllRecordTypes() {
    return _recordTypes.getAllRecordTypes();
  }

  @override
  Future<void> updateRecordType(int id, RecordTypeEntity recordType) {
    return _recordTypes.updateRecordType(id, recordType);
  }

  @override
  Stream<List<RecordTypeEntity>> watchRecordTypes() {
    return _controller.stream;
  }

  void dispose() {
    _controller.close();
  }
}

@riverpod
RecordTypeRepository recordTypeRepository(Ref ref) {
  final recordTypeDao = ref.read(recordTypeDaoProvider);
  return MockRecordTypeRepository(recordTypeDao);
}
