import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_file.freezed.dart';
part 'media_file.g.dart';

/// MediaFile 实体类 - 表示媒体文件信息
@freezed
abstract class MediaFile with _$MediaFile {
  const factory MediaFile({
    /// 媒体文件的唯一标识符
    int? id,

    /// 关联的记录ID
    required int recordId,

    /// 文件在设备上的存储路径
    required String filePath,

    /// 文件类型（如：image, video, audio, document）
    required String fileType,

    /// 文件的原始名称
    required String originalName,

    /// 文件大小（以字节为单位）
    required int fileSize,

    /// 文件的元数据信息
    String? metadata,

    /// 创建时间
    DateTime? createdAt,
  }) = _MediaFile;

  factory MediaFile.fromJson(Map<String, dynamic> json) => _$MediaFileFromJson(json);
}