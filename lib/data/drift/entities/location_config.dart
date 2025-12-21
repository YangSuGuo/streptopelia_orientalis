import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location_config.freezed.dart';
part 'location_config.g.dart';

@freezed
abstract class LocationConfig with _$LocationConfig {
  const factory LocationConfig({
    int? id,
    required int recordTypeId,
    @Default(false) bool requireLocation,
    @Default('high') String locationAccuracy,
    @Default(30000) int locationTimeout,
    @Default(true) bool showLocationDetails,
    DateTime? createdAt,
  }) = _LocationConfig;

  factory LocationConfig.fromJson(Map<String, dynamic> json) => _$LocationConfigFromJson(json);
}
