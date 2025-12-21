import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record_value_config.freezed.dart';
part 'record_value_config.g.dart';

@freezed
class RecordValueConfig with _$RecordValueConfig {
  const factory RecordValueConfig({
    int? id,
    required int recordTypeId,
    required String fieldName,
    String? fieldLabel,
    @Default('numeric') String fieldType,
    String? unit,
    double? minValue,
    double? maxValue,
    double? defaultValue,
    String? selectionOptions,
    @Default(false) bool isRequired,
    @Default(DateTime.now()) DateTime createdAt,
  }) = _RecordValueConfig;

  factory RecordValueConfig.fromJson(Map<String, dynamic> json) => _$RecordValueConfigFromJson(json);
}