import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_records_model.freezed.dart';
part 'category_records_model.g.dart';

@freezed
class CategoryRecordsModel with _$CategoryRecordsModel {
  const factory CategoryRecordsModel({
    int? id,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'record_id') required int recordId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _CategoryRecordsModel;

  factory CategoryRecordsModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryRecordsModelFromJson(json);
}