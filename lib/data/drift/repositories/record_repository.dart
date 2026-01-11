import '../../domain/entities/record.dart';
import '../app_database.dart';
import '../dao/record_dao.dart';
import 'base_repository.dart';

/// 记录数据仓库实现类
/// 提供对记录表的高级数据访问操作
class RecordRepository implements BaseRepository<Record, int> {
  final RecordDao _recordDao;

  /// 构造函数，接收RecordDao实例
  RecordRepository(this._recordDao);

  /// 添加记录实体到数据库
  /// 插入新记录
  @override
  Future<Record> add(Record entity) async {
    // 将实体转换为数据库对象并保存
    final record = RecordsCompanion(
      id: Value(entity.id),
      recordTypeId: Value(entity.recordTypeId),
      title: Value(entity.title),
      content: Value(entity.content),
      startTime: Value(entity.startTime),
      endTime: Value(entity.endTime),
      status: Value(entity.status),
      metadataJson: Value(entity.metadata),
      createdAt: Value(entity.createdAt),
      updatedAt: Value(entity.updatedAt),
    );
    
    if (entity.id != null && entity.id! > 0) {
      // 更新现有记录
      await _recordDao.updateRecord(record);
      return entity;
    } else {
      // 插入新记录
      final id = await _recordDao.insertRecord(record);
      return entity.copyWith(id: id);
    }
  }

  /// 根据ID查找记录
  /// 返回匹配的记录实体，如果未找到则返回null
  @override
  Future<Record?> findById(int id) async {
    final record = await _recordDao.getRecordById(id);
    if (record != null) {
      // 将数据库记录转换为实体
      return Record(
        id: record.id,
        recordTypeId: record.recordTypeId,
        title: record.title ?? '',
        content: record.content,
        startTime: record.startTime,
        endTime: record.endTime,
        status: record.status,
        metadata: record.metadataJson,
        createdAt: record.createdAt,
        updatedAt: record.updatedAt,
      );
    }
    return null;
  }

  /// 获取所有记录
  /// 返回所有记录实体的列表
  @override
  Future<List<Record>> findAll() async {
    final records = await _recordDao.getAllRecords();
    return records.map((record) => Record(
      id: record.id,
      recordTypeId: record.recordTypeId,
      title: record.title ?? '',
      content: record.content,
      startTime: record.startTime,
      endTime: record.endTime,
      status: record.status,
      metadata: record.metadataJson,
      createdAt: record.createdAt,
      updatedAt: record.updatedAt,
    )).toList();
  }

  /// 删除记录实体
  /// 从数据库中删除匹配的记录并返回受影响的行数
  @override
  Future<int> delete(Record entity) async {
    if (entity.id != null) {
      return await _recordDao.deleteRecord(entity.id!);
    }
    return 0;
  }

  /// 根据ID删除记录
  /// 从数据库中删除指定ID的记录并返回受影响的行数
  @override
  Future<int> deleteById(int id) async {
    return await _recordDao.deleteRecord(id);
  }

  /// 根据记录类型ID获取记录列表
  /// 返回与指定记录类型关联的所有记录
  Future<List<Record>> findByRecordTypeId(int recordTypeId) async {
    final records = await _recordDao.getRecordsByRecordTypeId(recordTypeId);
    return records.map((record) => Record(
      id: record.id,
      recordTypeId: record.recordTypeId,
      title: record.title ?? '',
      content: record.content,
      startTime: record.startTime,
      endTime: record.endTime,
      status: record.status,
      metadata: record.metadataJson,
      createdAt: record.createdAt,
      updatedAt: record.updatedAt,
    )).toList();
  }

  /// 根据状态获取记录列表
  /// 返回具有指定状态的所有记录
  Future<List<Record>> findByStatus(String status) async {
    final records = await _recordDao.getRecordsByStatus(status);
    return records.map((record) => Record(
      id: record.id,
      recordTypeId: record.recordTypeId,
      title: record.title ?? '',
      content: record.content,
      startTime: record.startTime,
      endTime: record.endTime,
      status: record.status,
      metadata: record.metadataJson,
      createdAt: record.createdAt,
      updatedAt: record.updatedAt,
    )).toList();
  }
}