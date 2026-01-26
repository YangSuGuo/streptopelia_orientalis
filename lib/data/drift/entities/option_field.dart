import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_field.freezed.dart';
part 'option_field.g.dart';

@freezed
class OptionField with _$OptionField {
  const factory OptionField({
    int? id,
    required int projectId,
    required String title,
    required int optionCount,
    required int maxSelections,
    required String optionsList,
  }) = _OptionField;

  factory OptionField.fromJson(Map<String, dynamic> json) => _$OptionFieldFromJson(json);
}