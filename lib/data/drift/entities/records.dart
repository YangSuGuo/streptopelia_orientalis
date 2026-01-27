import 'package:freezed_annotation/freezed_annotation.dart';

part 'records.freezed.dart';
part 'records.g.dart';

@freezed
abstract class Records with _$Records {
  const factory Records({
    int? id,
    required int projectId,
    required String title,
    String? content,
    int? stepIndex,
    required bool isArchived,
    required bool isHidden,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _Records;

  factory Records.fromJson(Map<String, dynamic> json) => _$RecordsFromJson(json);
}