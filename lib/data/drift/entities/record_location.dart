import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record_location.freezed.dart';
part 'record_location.g.dart';

@freezed
class RecordLocation with _$RecordLocation {
  const factory RecordLocation({
    int? id,
    required int recordId,
    double? latitude,
    double? longitude,
    String? address,
    String? locationName,
    double? accuracy,
    double? altitude,
    double? speed,
    double? heading,
    @Default(DateTime.now()) DateTime createdAt,
  }) = _RecordLocation;

  factory RecordLocation.fromJson(Map<String, dynamic> json) => _$RecordLocationFromJson(json);
}