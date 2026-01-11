import '../../models/record_type_model.dart';
import '../dao/record_type_dao.dart';
import '../entities/record_type.dart';

/// 记录类型数据仓库
/// 负责处理记录类型相关的数据库操作
class RecordTypeRepository {
  final RecordTypeDao _recordTypeDao;

  /// 构造函数
  /// [recordTypeDao] - 记录类型数据访问对象
  RecordTypeRepository(this._recordTypeDao);

  /// 添加记录类型
  /// [recordTypeModel] - 要添加的记录类型模型
  /// 返回新创建的记录类型ID
  Future<int> addRecordType(RecordTypeModel recordTypeModel) async {
    final recordType = RecordType(
      name: recordTypeModel.name,
      categoryId: recordTypeModel.categoryId,
      description: recordTypeModel.description,
      icon: recordTypeModel.icon,
      color: recordTypeModel.color,
      isEnabled: recordTypeModel.isEnabled ?? true,
      sortOrder: recordTypeModel.sortOrder ?? 0,
      
      // 配置字段
      requirePhoto: recordTypeModel.requirePhoto,
      maxPhotos: recordTypeModel.maxPhotos,
      requireLocation: recordTypeModel.requireLocation,
      locationAccuracy: recordTypeModel.locationAccuracy,
      locationTimeout: recordTypeModel.locationTimeout,
      hasTimer: recordTypeModel.hasTimer,
      timerDuration: recordTypeModel.timerDuration,
      hasNotes: recordTypeModel.hasNotes,
      hasAttachments: recordTypeModel.hasAttachments,
      hasAudioRecording: recordTypeModel.hasAudioRecording,
      maxAudioDuration: recordTypeModel.maxAudioDuration,
      hasVideoRecording: recordTypeModel.hasVideoRecording,
      maxVideoDuration: recordTypeModel.maxVideoDuration,
      showDuration: recordTypeModel.showDuration,
      showStartTime: recordTypeModel.showStartTime ?? true,
      showEndTime: recordTypeModel.showEndTime ?? true,
      hasSubtasks: recordTypeModel.hasSubtasks,
      hasNumericValues: recordTypeModel.hasNumericValues,
      hasTextValues: recordTypeModel.hasTextValues,
      hasSelectionValues: recordTypeModel.hasSelectionValues,
      selectionOptions: recordTypeModel.selectionOptions,
      
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    return await _recordTypeDao.insertRecordType(recordType);
  }

  /// 获取所有记录类型
  /// 返回记录类型列表
  Future<List<RecordTypeModel>> getAllRecordTypes() async {
    final recordTypes = await _recordTypeDao.getAllRecordTypes();
    return recordTypes.map((entity) => RecordTypeModel.fromEntity(entity)).toList();
  }

  /// 根据ID获取记录类型
  /// [id] - 记录类型ID
  /// 返回对应的记录类型模型或null（如果不存在）
  Future<RecordTypeModel?> getRecordTypeById(int id) async {
    final recordType = await _recordTypeDao.getRecordTypeById(id);
    return recordType != null ? RecordTypeModel.fromEntity(recordType) : null;
  }

  /// 获取启用的记录类型
  /// 返回启用状态的记录类型列表
  Future<List<RecordTypeModel>> getEnabledRecordTypes() async {
    final recordTypes = await _recordTypeDao.getEnabledRecordTypes();
    return recordTypes.map((entity) => RecordTypeModel.fromEntity(entity)).toList();
  }

  /// 更新记录类型
  /// [recordTypeModel] - 要更新的记录类型模型
  /// 返回受影响的行数（通常为1表示成功，0表示失败）
  Future<int> updateRecordType(RecordTypeModel recordTypeModel) async {
    if (recordTypeModel.id == null) {
      throw Exception('记录类型ID不能为空');
    }
    
    final recordType = RecordType(
      id: recordTypeModel.id!,
      name: recordTypeModel.name,
      categoryId: recordTypeModel.categoryId,
      description: recordTypeModel.description,
      icon: recordTypeModel.icon,
      color: recordTypeModel.color,
      isEnabled: recordTypeModel.isEnabled ?? true,
      sortOrder: recordTypeModel.sortOrder ?? 0,
      
      // 配置字段
      requirePhoto: recordTypeModel.requirePhoto,
      maxPhotos: recordTypeModel.maxPhotos,
      requireLocation: recordTypeModel.requireLocation,
      locationAccuracy: recordTypeModel.locationAccuracy,
      locationTimeout: recordTypeModel.locationTimeout,
      hasTimer: recordTypeModel.hasTimer,
      timerDuration: recordTypeModel.timerDuration,
      hasNotes: recordTypeModel.hasNotes,
      hasAttachments: recordTypeModel.hasAttachments,
      hasAudioRecording: recordTypeModel.hasAudioRecording,
      maxAudioDuration: recordTypeModel.maxAudioDuration,
      hasVideoRecording: recordTypeModel.hasVideoRecording,
      maxVideoDuration: recordTypeModel.maxVideoDuration,
      showDuration: recordTypeModel.showDuration,
      showStartTime: recordTypeModel.showStartTime ?? true,
      showEndTime: recordTypeModel.showEndTime ?? true,
      hasSubtasks: recordTypeModel.hasSubtasks,
      hasNumericValues: recordTypeModel.hasNumericValues,
      hasTextValues: recordTypeModel.hasTextValues,
      hasSelectionValues: recordTypeModel.hasSelectionValues,
      selectionOptions: recordTypeModel.selectionOptions,
      
      createdAt: recordTypeModel.createdAt ?? DateTime.now(),
      updatedAt: DateTime.now(),
    );
    return await _recordTypeDao.updateRecordType(recordType);
  }

  /// 删除记录类型
  /// [id] - 要删除的记录类型ID
  /// 返回受影响的行数（通常为1表示成功，0表示失败）
  Future<int> deleteRecordType(int id) async {
    return await _recordTypeDao.deleteRecordType(id);
  }
}