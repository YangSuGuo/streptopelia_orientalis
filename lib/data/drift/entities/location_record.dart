import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_record.freezed.dart';
part 'location_record.g.dart';

@freezed
class LocationRecord with _$LocationRecord {
  const factory LocationRecord({
    int? id,
    required int projectId,
    required int recordId,
    required String locationName,
    required double accuracy,
    required double longitude,
    required double latitude,
    required DateTime createdAt,
  }) = _LocationRecord;

  factory LocationRecord.fromJson(Map<String, dynamic> json) => _$LocationRecordFromJson(json);
}