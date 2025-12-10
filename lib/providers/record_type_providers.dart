import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/drift/repositories/record_type_repository.dart'; // Use existing repository
import '../data/drift/entities/record_entity.dart'; // Use existing entity

part 'record_type_providers.freezed.dart';

// Use the existing repository provider
@riverpod
Stream<List<RecordTypeEntity>> watchedRecordTypes(Ref ref) {
  final repository = ref.watch(recordTypeRepositoryProvider);
  return repository.watchAllRecordTypes();
}

// Notifier for managing individual record type operations
@riverpod
class RecordTypeList extends _$RecordTypeList {
  @override
  Future<List<RecordTypeEntity>> build() async {
    final repository = ref.watch(recordTypeRepositoryProvider);
    return await repository.getAllRecordTypes();
  }

  Future<void> addRecordType(RecordTypeEntity recordType) async {
    final repository = ref.read(recordTypeRepositoryProvider);
    await repository.createRecordType(recordType);
    
    // Refresh the state
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.getAllRecordTypes());
  }

  Future<void> updateRecordType(int id, RecordTypeEntity recordType) async {
    final repository = ref.read(recordTypeRepositoryProvider);
    await repository.updateRecordType(id, recordType);
    
    // Refresh the state
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.getAllRecordTypes());
  }

  Future<void> deleteRecordType(int id) async {
    final repository = ref.read(recordTypeRepositoryProvider);
    await repository.deleteRecordType(id);
    
    // Refresh the state
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.getAllRecordTypes());
  }
}

// Individual record type provider
final selectedRecordTypeProvider = StateProvider<int?>((ref) => null);

// Filtered record types provider
@riverpod
List<RecordTypeEntity> filteredRecordTypes(Ref ref) {
  final allRecordTypes = ref.watch(watchedRecordTypesProvider).value ?? [];
  final selectedId = ref.watch(selectedRecordTypeProvider);
  
  if (selectedId == null) {
    return allRecordTypes;
  }
  
  return allRecordTypes.where((type) => type.id == selectedId).toList();
}