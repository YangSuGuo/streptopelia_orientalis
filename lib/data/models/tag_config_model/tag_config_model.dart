import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_config_model.freezed.dart';
part 'tag_config_model.g.dart';

@freezed
class TagConfigModel with _$TagConfigModel {
  const factory TagConfigModel({
    int? id,
    @JsonKey(name: 'record_type_id') required int recordTypeId,
    @JsonKey(name: 'tag_name') required String tagName,
    @JsonKey(name: 'tag_color') String? tagColor,
    @JsonKey(name: 'is_preset') bool? isPreset,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _TagConfigModel;

  factory TagConfigModel.fromJson(Map<String, dynamic> json) =>
      _$TagConfigModelFromJson(json);
}