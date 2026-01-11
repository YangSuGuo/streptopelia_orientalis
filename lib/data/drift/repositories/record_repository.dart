import 'package:streptopelia_orientalis/data/drift/dao/record_dao.dart';

/// 记录数据仓库
/// 负责处理记录相关的数据库操作
class RecordRepository {
  final RecordDao _recordDao;

  /// 构造函数
  /// [recordDao] - 记录数据访问对象
  RecordRepository(this._recordDao);

}