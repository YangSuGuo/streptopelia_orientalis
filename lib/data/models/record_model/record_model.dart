import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_model.freezed.dart';
part 'record_model.g.dart';

@freezed
class RecordModel with _$RecordModel {
  const factory RecordModel({
    int? id,
    required int recordTypeId,
    String? title,
    String? content,
    String? startTime,
    String? endTime,
    int? durationSeconds,
    String? locationName,
    double? latitude,
    double? longitude,
    double? accuracy,
    @Default('draft') String status,
    String? tagsJson,
    String? metadataJson,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _RecordModel;

  factory RecordModel.fromJson(Map<String, Object?> json) =>
      _$RecordModelFromJson(json);
}