import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_record.freezed.dart';
part 'category_record.g.dart';

@freezed
class CategoryRecord with _$CategoryRecord {
  const factory CategoryRecord({
    int? id,
    required int categoryId,
    required int recordId,
    @Default(DateTime.now()) DateTime createdAt,
  }) = _CategoryRecord;

  factory CategoryRecord.fromJson(Map<String, dynamic> json) => _$CategoryRecordFromJson(json);
}