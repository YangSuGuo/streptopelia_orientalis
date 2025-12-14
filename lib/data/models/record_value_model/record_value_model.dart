import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_value_model.freezed.dart';
part 'record_value_model.g.dart';

@freezed
class RecordValueModel with _$RecordValueModel {
  const factory RecordValueModel({
    int? id,
    required int recordId,
    @Default('') String fieldName,
    double? fieldValue,
    String? unit,
    @Default('decimal') String valueType,
    @Default('') String createdAt,
  }) = _RecordValueModel;

  factory RecordValueModel.fromJson(Map<String, Object?> json) =>
      _$RecordValueModelFromJson(json);
}