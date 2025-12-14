import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_tag_model.freezed.dart';
part 'record_tag_model.g.dart';

@freezed
class RecordTagModel with _$RecordTagModel {
  const factory RecordTagModel({
    int? id,
    @JsonKey(name: 'record_id') required int recordId,
    @JsonKey(name: 'tag_name') required String tagName,
    @JsonKey(name: 'tag_color') String? tagColor,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _RecordTagModel;

  factory RecordTagModel.fromJson(Map<String, dynamic> json) =>
      _$RecordTagModelFromJson(json);
}