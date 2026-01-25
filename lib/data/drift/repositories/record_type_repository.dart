import '../dao/record_type_dao.dart';

/// 记录类型数据仓库
/// 负责处理记录类型相关的数据库操作
class RecordTypeRepository {
  final RecordTypeDao _recordTypeDao;

  /// 构造函数
  /// [recordTypeDao] - 记录类型数据访问对象
  RecordTypeRepository(this._recordTypeDao);

  // Future<int> addRecordType(RecordType recordType) async {
  //
  // }
}