import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record.freezed.dart';
part 'record.g.dart';

@freezed
class Record with _$Record {
  const factory Record({
    int? id,
    required int recordTypeId,
    String? title,
    String? content,
    DateTime? startTime,
    DateTime? endTime,
    int? durationSeconds,
    String? locationName,
    double? latitude,
    double? longitude,
    double? accuracy,
    @Default('draft') String status,
    String? tagsJson,
    String? metadataJson,
    @Default(DateTime.now()) DateTime createdAt,
    DateTime? updatedAt,
  }) = _Record;

  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
}