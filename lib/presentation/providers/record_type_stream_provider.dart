import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/entities/record_entity.dart';
import 'package:streptopelia_orientalis/data/drift/repositories/record_type_repository.dart';
import 'package:streptopelia_orientalis/domain/record_type.dart';

part 'record_type_stream_provider.g.dart';

/// 将数据访问层的RecordTypeEntity转换为领域层的RecordType实体
RecordType _convertToDomainEntity(RecordTypeEntity entity) {
  return RecordType(
    id: entity.id,
    name: entity.name,
    description: entity.description,
    icon: entity.icon,
    color: entity.color,
    config: entity.config != null ? entity.config.toString() : null,
    createdAt: entity.createdAt,
    updatedAt: entity.updatedAt,
  );
}

/// 提供实时更新的RecordType列表流
@riverpod
Stream<List<RecordType>> recordTypeStream(Ref ref) async* {
  final repository = ref.watch(recordTypeRepositoryProvider);
  
  // 监听来自数据源的流
  await for (final entities in repository.watchRecordTypes()) {
    // 将数据访问层实体转换为领域层实体
    final domainEntities = entities.map(_convertToDomainEntity).toList();
    yield domainEntities;
  }
}

/// 提供最新的RecordType列表（非流式）
@riverpod
Future<List<RecordType>> recordTypeList(Ref ref) async {
  final repository = ref.watch(recordTypeRepositoryProvider);
  final entities = await repository.getAllRecordTypes();
  return entities.map(_convertToDomainEntity).toList();
}