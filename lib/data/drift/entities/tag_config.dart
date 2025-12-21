import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tag_config.freezed.dart';
part 'tag_config.g.dart';

@freezed
class TagConfig with _$TagConfig {
  const factory TagConfig({
    int? id,
    required int recordTypeId,
    required String tagName,
    String? tagColor,
    @Default(false) bool isPreset,
    @Default(DateTime.now()) DateTime createdAt,
  }) = _TagConfig;

  factory TagConfig.fromJson(Map<String, dynamic> json) => _$TagConfigFromJson(json);
}