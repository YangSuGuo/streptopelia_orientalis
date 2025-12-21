import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record_type.freezed.dart';
part 'record_type.g.dart';

@freezed
class RecordType with _$RecordType {
  const factory RecordType({
    int? id,
    required String name,
    int? categoryId,
    String? description,
    String? icon,
    String? color,
    @Default(true) bool isEnabled,
    @Default(0) int sortOrder,
    
    // 配置字段
    @Default(false) bool requirePhoto,
    @Default(10) int maxPhotos,
    @Default(false) bool requireLocation,
    @Default('high') String locationAccuracy,
    @Default(30000) int locationTimeout,
    @Default(false) bool hasTimer,
    @Default(0) int timerDuration,
    @Default(false) bool hasNotes,
    @Default(false) bool hasAttachments,
    @Default(false) bool hasAudioRecording,
    @Default(60000) int maxAudioDuration,
    @Default(false) bool hasVideoRecording,
    @Default(60000) int maxVideoDuration,
    @Default(false) bool showDuration,
    @Default(true) bool showStartTime,
    @Default(true) bool showEndTime,
    @Default(false) bool hasSubtasks,
    @Default(false) bool hasNumericValues,
    @Default(false) bool hasTextValues,
    @Default(false) bool hasSelectionValues,
    String? selectionOptions,
    
    @Default(DateTime.now()) DateTime createdAt,
    DateTime? updatedAt,
  }) = _RecordType;

  factory RecordType.fromJson(Map<String, dynamic> json) => _$RecordTypeFromJson(json);
}