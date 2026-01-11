import '../../models/record_model.dart';
import '../dao/record_dao.dart';
import '../entities/record.dart';

/// 记录数据仓库
/// 负责处理记录相关的数据库操作
class RecordRepository {
  final RecordDao _recordDao;

  /// 构造函数
  /// [recordDao] - 记录数据访问对象
  RecordRepository(this._recordDao);

  /// 添加记录
  /// [recordModel] - 要添加的记录模型
  /// 返回新创建的记录ID
  Future<int> addRecord(RecordModel recordModel) async {
    final record = Record(
      recordTypeId: recordModel.recordTypeId,
      title: recordModel.title,
      content: recordModel.content,
      startTime: recordModel.startTime,
      endTime: recordModel.endTime,
      durationSeconds: recordModel.durationSeconds,
      locationName: recordModel.locationName,
      latitude: recordModel.latitude,
      longitude: recordModel.longitude,
      accuracy: recordModel.accuracy,
      status: recordModel.status ?? 'draft',
      tagsJson: recordModel.tagsJson,
      metadataJson: recordModel.metadataJson,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    return await _recordDao.insertRecord(record);
  }

  /// 获取所有记录
  /// 返回记录列表
  Future<List<RecordModel>> getAllRecords() async {
    final records = await _recordDao.getAllRecords();
    return records.map((entity) => RecordModel.fromEntity(entity)).toList();
  }

  /// 根据ID获取记录
  /// [id] - 记录ID
  /// 返回对应的记录模型或null（如果不存在）
  Future<RecordModel?> getRecordById(int id) async {
    final record = await _recordDao.getRecordById(id);
    return record != null ? RecordModel.fromEntity(record) : null;
  }

  /// 根据记录类型ID获取记录
  /// [recordTypeId] - 记录类型ID
  /// 返回该类型的记录列表
  Future<List<RecordModel>> getRecordsByRecordTypeId(int recordTypeId) async {
    final records = await _recordDao.getRecordsByRecordTypeId(recordTypeId);
    return records.map((entity) => RecordModel.fromEntity(entity)).toList();
  }

  /// 根据状态获取记录
  /// [status] - 记录状态
  /// 返回指定状态的记录列表
  Future<List<RecordModel>> getRecordsByStatus(String status) async {
    final records = await _recordDao.getRecordsByStatus(status);
    return records.map((entity) => RecordModel.fromEntity(entity)).toList();
  }

  /// 更新记录
  /// [recordModel] - 要更新的记录模型
  /// 返回受影响的行数（通常为1表示成功，0表示失败）
  Future<int> updateRecord(RecordModel recordModel) async {
    if (recordModel.id == null) {
      throw Exception('记录ID不能为空');
    }
    
    final record = Record(
      id: recordModel.id!,
      recordTypeId: recordModel.recordTypeId,
      title: recordModel.title,
      content: recordModel.content,
      startTime: recordModel.startTime,
      endTime: recordModel.endTime,
      durationSeconds: recordModel.durationSeconds,
      locationName: recordModel.locationName,
      latitude: recordModel.latitude,
      longitude: recordModel.longitude,
      accuracy: recordModel.accuracy,
      status: recordModel.status ?? 'draft',
      tagsJson: recordModel.tagsJson,
      metadataJson: recordModel.metadataJson,
      createdAt: recordModel.createdAt ?? DateTime.now(),
      updatedAt: DateTime.now(),
    );
    return await _recordDao.updateRecord(record);
  }

  /// 删除记录
  /// [id] - 要删除的记录ID
  /// 返回受影响的行数（通常为1表示成功，0表示失败）
  Future<int> deleteRecord(int id) async {
    return await _recordDao.deleteRecord(id);
  }
}