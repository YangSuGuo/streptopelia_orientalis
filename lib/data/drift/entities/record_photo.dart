import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record_photo.freezed.dart';
part 'record_photo.g.dart';

@freezed
class RecordPhoto with _$RecordPhoto {
  const factory RecordPhoto({
    int? id,
    required int recordId,
    String? photoPath,
    String? photoUrl,
    String? thumbnailPath,
    String? description,
    int? width,
    int? height,
    int? fileSize,
    @Default(0) int sortOrder,
    @Default(DateTime.now()) DateTime createdAt,
  }) = _RecordPhoto;

  factory RecordPhoto.fromJson(Map<String, dynamic> json) => _$RecordPhotoFromJson(json);
}