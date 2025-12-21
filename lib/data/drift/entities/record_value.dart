import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record_value.freezed.dart';
part 'record_value.g.dart';

@freezed
class RecordValue with _$RecordValue {
  const factory RecordValue({
    int? id,
    required int recordId,
    required String fieldName,
    double? fieldValue,
    String? fieldTextValue,
    @Default('numeric') String fieldType,
    String? unit,
    @Default('decimal') String valueType,
    @Default(DateTime.now()) DateTime createdAt,
  }) = _RecordValue;

  factory RecordValue.fromJson(Map<String, dynamic> json) => _$RecordValueFromJson(json);
}