import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_numeric_value.freezed.dart';
part 'record_numeric_value.g.dart';

@freezed
abstract class RecordNumericValue with _$RecordNumericValue {
  const factory RecordNumericValue({
    int? id,
    required int projectId,
    required int recordId,
    required int numericFieldId,
    required double value,
  }) = _RecordNumericValue;

  factory RecordNumericValue.fromJson(Map<String, dynamic> json) => _$RecordNumericValueFromJson(json);
}