import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record_type_config.freezed.dart';
part 'record_type_config.g.dart';

@freezed
class RecordTypeConfig with _$RecordTypeConfig {
  const factory RecordTypeConfig({
    int? id,
    required int recordTypeId,
    required String configKey,
    String? configValue,
    @Default('string') String configType,
    @Default(DateTime.now()) DateTime createdAt,
    @Default(null) DateTime? updatedAt,
  }) = _RecordTypeConfig;

  factory RecordTypeConfig.fromJson(Map<String, dynamic> json) => _$RecordTypeConfigFromJson(json);
}