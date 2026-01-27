import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_option_selection.freezed.dart';
part 'record_option_selection.g.dart';

@freezed
abstract class RecordOptionSelection with _$RecordOptionSelection {
  const factory RecordOptionSelection({
    int? id,
    required int projectId,
    required int recordId,
    required int optionFieldId,
    required String selectedOptions,
  }) = _RecordOptionSelection;

  factory RecordOptionSelection.fromJson(Map<String, dynamic> json) => _$RecordOptionSelectionFromJson(json);
}