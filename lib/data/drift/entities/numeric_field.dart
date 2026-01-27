import 'package:freezed_annotation/freezed_annotation.dart';

part 'numeric_field.freezed.dart';
part 'numeric_field.g.dart';

@freezed
abstract class NumericField with _$NumericField {
  const factory NumericField({
    int? id,
    required int projectId,
    required String title,
    String? unit,
  }) = _NumericField;

  factory NumericField.fromJson(Map<String, dynamic> json) => _$NumericFieldFromJson(json);
}