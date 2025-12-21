import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record_step_config.freezed.dart';
part 'record_step_config.g.dart';

@freezed
abstract class RecordStepConfig with _$RecordStepConfig {
  const factory RecordStepConfig({
    int? id,
    required int recordTypeId,
    required String stepName,
    String? stepDescription,
    required int stepOrder,
    @Default(false) bool required,
    @Default(true) bool allowSkip,
    DateTime? createdAt,
  }) = _RecordStepConfig;

  factory RecordStepConfig.fromJson(Map<String, dynamic> json) => _$RecordStepConfigFromJson(json);
}
