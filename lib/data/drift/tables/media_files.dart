import 'package:drift/drift.dart';

class MediaFiles extends Table {
  /// 媒体文件的唯一标识符，自动递增的整数主键
  IntColumn get id => integer().autoIncrement()();

  /// 关联的记录ID，外键引用
  IntColumn get recordId => integer()();

  /// 文件在设备上的存储路径
  TextColumn get filePath => text()();

  /// 文件类型（如：image, video, audio, document）
  TextColumn get fileType => text()();

  /// 文件的原始名称
  TextColumn get originalName => text()();

  /// 文件大小（以字节为单位）
  IntColumn get fileSize => integer()();

  /// 文件的元数据信息（可为空）
  TextColumn get metadata => text().nullable()();

  /// 文件创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}
