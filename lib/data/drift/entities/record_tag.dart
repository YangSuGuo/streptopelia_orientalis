import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record_tag.freezed.dart';
part 'record_tag.g.dart';

@freezed
abstract class RecordTag with _$RecordTag {
  const factory RecordTag({
    int? id,
    required int recordId,
    required String tagName,
    String? tagColor,
    DateTime? createdAt,
  }) = _RecordTag;

  factory RecordTag.fromJson(Map<String, dynamic> json) => _$RecordTagFromJson(json);
}
