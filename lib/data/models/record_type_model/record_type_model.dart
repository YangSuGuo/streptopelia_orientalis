import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_type_model.freezed.dart';
part 'record_type_model.g.dart';

@freezed
class RecordTypeModel with _$RecordTypeModel {
  const factory RecordTypeModel({
    int? id,
    @Default('') String name,
    int? categoryId,
    String? description,
    String? icon,
    String? color,
    @Default(true) bool isEnabled,
    @Default(0) int sortOrder,
    String? configJson,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _RecordTypeModel;

  factory RecordTypeModel.fromJson(Map<String, Object?> json) =>
      _$RecordTypeModelFromJson(json);
}