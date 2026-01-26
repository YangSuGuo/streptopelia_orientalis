import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_tag.freezed.dart';
part 'record_tag.g.dart';

@freezed
class RecordTag with _$RecordTag {
  const factory RecordTag({
    int? id,
    required int projectId,
    required int recordId,
    required int tagId,
  }) = _RecordTag;

  factory RecordTag.fromJson(Map<String, dynamic> json) => _$RecordTagFromJson(json);
}